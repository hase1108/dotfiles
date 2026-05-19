#!/bin/zsh

git config --global ghq.root '~/ghq'
gh auth login

# chezmoiの管理リポジトリだけghq配下じゃなくなるのは面倒なので、ここで修正する

rm -rf ~/.local/share/chezmoi

ghq get git@github.com:hase1108/dotfiles.git

ln -s ~/ghq/github.com/hase1108/dotfiles ~/.local/share/chezmoi