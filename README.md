# GLServer のインストール法

## 変更履歴
1. 19/10/16 初版の作成。projectとscrum_memberのみ実装を終了している。

## システム要件

Windows10 と ubuntu 18.04 LTS の両方の環境で sqlite3 データベースを用いて実行するため、ruby は 2.4 を使用する。

  - Windows10 または ubuntu 18.04 LTS
  - ruby    2.4
  - Rails   5.1.7
  - node.js v10.16.0
  - Bundler version 1.17.3
  - sqlite3 1.3.13

ubuntu 環境では、install-191015.pdf を参考にして rbenv を用いてインストールする。

Windows 環境では、[RubyInstallers](https://rubyinstaller.org/downloads/) より Ruby+Devkit 2.4.9-1 (x64) をダウンロードする。

## 1. bundler のアップデート

```bash
% ruby -v
ruby 2.4.6p354 (2019-04-01 revision 67394) [x64-mingw32]
% gem update --system
% gem install bundler -v 1.17.3
```

## 2. gem のインストールなど

bundle を実行する。puma は development, test 環境では不要。

```bash
% bundle install --without production
% bundle exec rake db:migrate
% bundle exec rake db:seed
% bundle exec rake routes > routes.txt
```

## 3. GLServer の実行

次を実行すると、GLServer を localhost:3000 でアクセスできる。なお、Admin のメールアドレスとパスワードは example@railstutorial.org / foobar である。

```bash
% bundle exec rails s
```

他のマシンからアクセスできるようにするには、server.bat に書かれた IP アドレスとポート番号を変更して実行する。

## 参考ページ

本システムで使用している gem について説明する。

### 1) bootstrap

Bootstrap4 については、次のサイトを参照する。

https://getbootstrap.jp/docs/4.3/

### 2) bootstrap_form

bootstrap_form を使うと、Bootstrap に対応したフォームを簡単に記述できる。ただし、細かい指定はできない。

https://github.com/bootstrap-ruby/bootstrap_form

bootstrap_form を使うと、次のようにフォームの記述が3分の１になる。

```erb
<%= bootstrap_form_for(@user) do |f| %>
  <%= f.email_field :email %>
  <%= f.password_field :password %>
  <%= f.check_box :remember_me %>
  <%= f.submit "Log In" %>
<% end %>
```

### 3) font-awesome

GLServer でアイコンフォントとして font awesome を使用している。使用できるアイコンは次のサイトで free のものを使用できる。search 窓にキーワードを入れてアイコンを検索する。

https://fontawesome.com/icons?d=gallery&m=free

例えば、plus アイコンを使用する場合は次のように記述する。

```erb
<%= fa_icon("plus") %>
```

### 4) record_tag_helper

Rails5 ではサポートされなくなった content_tag_for フォームヘルパーを利用できるようにするため、次の gem を使用している。

https://github.com/rails/record_tag_helper


以上




