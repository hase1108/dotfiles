# dofiles

## 初期設定スクリプト

- 本来はrun_onceスクリプトなどで管理したいが、そもそもchezmoiの導入などに必要な一連の作業を以下にまとめて管理する

```
# homebrewの導入
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /Users/user/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> /Users/user/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

source ~/.zprofile

# chezmoi導入
brew install chezmoi

# ssh鍵登録
mkdir -p ~/.ssh
chmod 700 ~/.ssh

ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github

ssh-add --apple-use-keychain ~/.ssh/id_ed25519_github

# githubにssh鍵を登録すること

chezmoi init git@github.com:hase1108/dotfiles.git
chezmoi apply
```

## このdotfilesではできないこと

- homebrewの導入およびchezmoiの導入

- 全体的な外観モードの設定
  - 設定 -> 外観 -> 外観モードで設定

- capsLockの動作変更
  - https://support.apple.com/ja-jp/guide/japanese-input-method/jpimf6ffb247/mac

- GitHubへ作成したssh鍵の登録

- iTerm2の設定インポート
  - `iterm2.itermexport`をiterm2の`General -> Settings -> Backup&Restore`でimport

- raycast設定のインポート
 - `gha get git@github.com:hase1108/cheatsheets.git`

- VSCodeのsetting.json
  - devcontainerの接続先の設定