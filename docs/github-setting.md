# GitHub のリポジトリにアクセスするための設定

内藤広志

### 更新履歴
 2019/10/23 初版の作成

## 1. xclip のインストール

### 1) xclip をインストールする

```bash
% sudo apt-get install xclip -y
```

### 2) xclip の別名 pbcopy を .bashrc に登録する

` (バッククォート) であるので間違えないこと。

```bash
% echo "alias pbcopy=`xclip -selection clipboard`" >> ~/.bashrc
```

## 2. SSH認証キーの作成

### 1) SSH認証キーを作成する

すべて Enter キーを入力する。パスフレーズを入力すると、GitHub への接続がアボートする。

```bash
% ssh-keygen -t rsa
```

### 2) ~/.ssh/config の編集

次の GitHub の接続設定を追加する。タブもこの通りに入力する。

```text
Host github
  HostName github.com
  IdentityFile ~/.ssh/id_rsa
  Port 22
  User git
```

### 3) 秘密鍵をアクセス権を設定する

```bash
% cd ~/.ssh
% chmod 600 id_rsa
```

### 4) ssh-agentに秘密鍵を登録する

```bash
% eval `ssh-agent`
% ssh-add ~/.ssh/id_rsa
```

### 5) 登録されたか確認する

```bash
% ssh-add -l
```

### 6) 公開鍵をコピーする

```bash
% pbcopy < ~/.ssh/id_rsa.pub
```

## 3. GitHub にSSH Keysを登録

1. GitHub にログインし、メニューバーの右上のドロップダウンメニューから「settings」を実行する。
1. ページのサイドバーの「SSH and GPG keys」 を選択する。
1. 「New SSH Key」ボタンを押す。、「Key」項目に公開鍵を貼り付けて「Add SSH key」をクリック。の設定ページを表示する。
1. 次の画面が表示されるので、「Title」欄に WLDL15 を入力する。
![SSH keys/Add new](./ssh-keys-add-new.jpg "SSH keys/Add new")  
1. 端末ウィンドウに戻り、次のコマンドを実行する。  
        % pbcopy < ~/.ssh/id_rsa.pub  
1. 「Key」欄にコピーした公開鍵をペースト (Ctrl-v) する。
1. 「Add SSH key」ボタンを押す。

## 4. 公開鍵が登録されたか確認する

```bash
% ssh -T git@github.com
```
## 5. GitHub の設定

```bash
% git config --global user.name "ユーザー名"
% git config --global user.email メールアドレス
```

## 6. GitHub リポジトリにアクセスし、push できるかを確認する

### 1) WLDL15/TEST リポジトリをクローンする

### 2) WLDL15/TEST リポジトリを VSCode で開く

### 3) VSCode でターミナルを開く

### 4) 新しいブランチを作成する

ターミナルで次を実行して、新しいブランチを作成し、それを作業ツリーとする

```bash
% git branch
% git status
% git checkout -b 名前/newbranch
```

### 5) 新しいファイルをリモートリポジトリに push する

新しいファイルを作成し、次のコマンドを実行して、そのファイルをリモートリポジトリに push する。

```bash
% git add 新しいファイルの名前
% git commit -m "[add] 新しいファイルの追加"
% git push origin 名前/newbranch
```

### 6) WLDL15/TEST リポジトリの確認

WLDL15/TEST リポジトリをブラウザで表示し、「branches」タブを開き、push したブランチがあるかを確認する。

## 参考ページ

1. How to use pbcopy on Ubuntu (https://garywoodfine.com/use-pbcopy-on-ubuntu/)
2. 新しいMacでGitHubのSSH接続をするまでの環境構築手順 (qiita.com)