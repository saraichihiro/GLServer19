# VSCode で Rails をデバッグするための設定法

内藤広志

### 更新履歴
- 2019/11/25 初版の作成

## 1. 必要なgemの追加

- Gemfileファイルのdevelopment/testグループに次の２つのgemを追加する

```ruby
group :development, :test do
  省略
  gem 'ruby-debug-ide'
  gem 'debase'
end
```

- gem をインストールする。

```bash
% bundle install --without production
```

## 2. Ruby の拡張機能のインストール

- VSCode を起動し、Ruby の拡張機能(Ruby language support and debugging for Visual Studio Code)をインストールする。

## 3. Rails デバッグ用のlaunch.jsonの作成

- VSCode で任意の .rb ファイルを選択した後、[デバッグ]--[構成の追加...]メニューを実行する。

- 表示されたlaunch.jsonファイルに次のコードを追加する。

```json
.vscode/launch.json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Listen for rdebug-ide",
      "type": "Ruby",
      "request": "attach",
      "cwd": "${workspaceRoot}",
      "remoteHost": "127.0.0.1",
      "remotePort": "1234",
      "remoteWorkspaceRoot": "${workspaceRoot}",
      "cwd": "${workspaceRoot}"
    }
  ]
}
```

## 4. Rails アプリの起動

- VSCodeのターミナルで次のコマンドを実行し、Rails サーバーをデバッグモードで実行する。

```bash
% bundle exec rdebug-ide --host 127.0.0.1 --port 1234 -- bin/rails s -b 127.0.0.1 -p 3000
```

- Rails サーバーが起動される。

## 5. デバッガーの起動

- デバッグビューに切り替え、「Listen for rdebug-ide」を選択、再生ボタンを押下する。
- ブレイクポイントを設定し、ブラウザの操作し、デバッグ対象の画面を表示する。

## 参考ページ

1. WindowsでVSCodeを使ってrailsのデバッグを行う
(https://qiita.com/naoto_koyama/items/313e45a0f26e1e641728)

2. Visual Studio Codeを使ってRailsをデバッグ実行してみよう
(https://qiita.com/chimame/items/56e48ab3145312ff1786)

3. debase
(https://rubygems.org/gems/debase/versions/0.2.1)

4. ruby-debug-ide
(https://rubygems.org/gems/ruby-debug-ide/versions/0.6.0)

5. VSCode Debugging
(https://code.visualstudio.com/docs/editor/debugging)