# OpenProject のインストール法 1.0 
内藤広志  2019/08/28 17:17

### 更新履歴
 2019/08/28 初版の作成
 2019/10/15 マイナーな修正
1. sudo apt-get upgrade を実行する
2. postgresql を service で起動する

### 参考サイト 
  1) OpenProject development Setup on Debian / Ubuntu
    (https://www.openproject.org/development/setting-up-development-environment/)
  
### 実行環境
  Ubuntu 18.04.3 LTS

## 1. インストールするツールのバージョン

```shell
  % rbenv -v
  rbenv 1.1.2-2-g4e92322
  % ruby -v  
  ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux] 
  % bundle -v
  Bundler version 2.0.2
  % bundle exec rails -v
  Rails 5.2.2.1
  % nodenv -v
  nodenv 1.3.0+5.ae0f24a
  % node -v
  v10.15.3
  % npm -v
  6.11.2
  % psql --version
  psql (PostgreSQL) 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
```

## 2. 準備作業

インストールに必要な環境を準備する。

### 2.1 Rubyのインストール

インストールに必要な開発環境を構築する。

```shell
% sudo apt-get update
% sudo apt-get upgrade
% sudo apt-get install git curl build-essential zlib1g-dev 
% sudo apt-get install libyaml-dev libssl-dev libpq-dev
% sudo apt-get install libmysqlclient-dev libreadline-dev libffi6
```
rbenv をインストールする。rbenv は ruby の複数のバージョンをインストールし、使用するバージョンを設定するツールです。

```shell
% git clone https://github.com/rbenv/rbenv.git ~/.rbenv
% cd ~/.rbenv && src/configure && make -C src
% cd
% echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
% echo 'eval "$(rbenv init -)"' >> ~/.bashrc
% source ~/.bashrc
% rbenv -v
rbenv 1.1.2-4-g577f046
```

ruby をインストールする。rbenv globalで使用するバージョンを設定する。

```shell
% git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
% rbenv install 2.6.3
% rbenv global 2.6.3
% ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux] 
```

### 2.2 RubyGemsの更新とBundlerインストール

RubyGemsを更新する。

```shell
% gem update --system
Successfully installed rubygems-update-3.0.6
```

Bundlerを更新する。bundler's executable "bundle" conflicts ...と表示されるので、y を入力して新しいバージョンに置き替える。

```shell
% gem install bundler
Successfully installed bundler-2.0.2
```

### 2.3 PostgreSQLをインストールする

```shell
% sudo apt-get install postgresql postgresql-client mysql-client
```

PostgresSQL の設定をする。まず、ユーザー openproject を作成し、パスワード openproject を指定する。次に開発・テスト用のデータベースを作成する。

```shell
% sudo su postgres
[postgres@ubuntu]# createuser -d -P openproject
Enter password for new role: openproject
Enter it again: openproject
[postgres@ubuntu]# createdb -O openproject openproject_dev
[postgres@ubuntu]# createdb -O openproject openproject_test
[postgres@ubuntu]# exit
```

postgres を次の手順でバックグラウンドで起動する必要があるか？

```shell
% service postgresql start
% service postgresql status
```

### 2.4 Node.jsと npm をインストールする

nodenv をインストールする。nodenv は node.js の複数のバージョンをインストールし、使用するバージョンを設定するツールです。

```shell
% git clone https://github.com/nodenv/nodenv.git ~/.nodenv
% cd ~/.nodenv && src/configure && make -C src
% cd
% echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
% echo 'eval "$(nodenv init -)"' >> ~/.bashrc
% source ~/.bashrc
% nodenv -v
nodenv 1.3.0+5.ae0f24a
```

node.js をインストールする。nodenv globalで使用するバージョンを設定する。なお、$(nodenv root)のように空白で区切る必要があるので注意する。

```shell
% git clone https://github.com/nodenv/node-build.git $(nodenv root)/plugins/node-build
% nodenv install 10.15.3
% nodenv global 10.15.3
% node -v
v10.15.3
```

npm をインストールする。npm は node.js のモジュールを管理するツールです。

```shell
% sudo apt-get install npm
# npm を最新版に更新する
% npm install -g npm
```

<u>インストールする npm のバージョンを設定する nodenv を使った方法があるかも？</u>

## 3. OpenProject のインストール

OpenProject をインストールする。npm は package.json に書かれたパッケージをインストールする。

```shell
% cd
% git clone https://github.com/opf/openproject-ce.git
% cd openproject-ce
% bundle install --without production
% npm install
```

<u>
この git clone によって openproject-ceの stable/8 がクローンされる。openproject の release/8.3 をインストールしたほうが良いか？
</u>

## 4. OpenProject のデータベースを作成する

次の内容の config/database.yml を作成する。タブを次と同じにする。コピーすると空白・タブが削除されるので注意する。パスワードは createuser の実行時に設定したものを使う。

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: localhost
  username: openproject
  password: openproject

development:
  <<: *default
  database: openproject_dev

test:
  <<: *default
  database: openproject_test
```

開発用のデータベースを初期化する

```shell
% export RAILS_ENV=development
% bundle exec rake db:migrate db:seed
```

テスト用データベースの作成は次のように失敗する。<u>解決法は不明。</u>

```shell
% bundle exec rake db:test:prepare
 set_config 
------------
 
(1 row)

psql:/home/openproject/openproject-ce/db/structure.sql:23: ERROR:  must be owner of extension plpgsql
rake aborted!
failed to execute:
```

## 5. OpenProject を起動する

foreman を使って OpenProject を起動する。
```shell
% gem install foreman
% foreman start -f Procfile.dev
```

foreman は Procfile ファイルを読み込み、複数のプロセスを起動できるツールです。
https://qiita.com/7kaji/items/6a59977d2ad85604e7fd

<u>エラーメッセージが表示されているので確認する。</u>

## 6. OpenProject アプリを表示する

firefox で http://localhost:3000/ を表示する。


## 7. ユーザーを新規登録する

ユーザーを新規登録すると、メール通知ではなく、OpenProject account activation request ページがブラウザに
開かれるので、Activate user リンクをクリックする。

ユーザー/パスワードを求められるので admin/admin でログインする。その結果、新規ユーザーの
Change status of #{username} | Administration ページが表示されるので、Activate ボタンを押す。


以上
