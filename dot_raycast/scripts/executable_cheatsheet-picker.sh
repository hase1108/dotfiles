#!/bin/zsh

CHEAT_DIR="$HOME/ghq/github.com/hase1108/cheatsheets"

selected=$(
  fd . "$CHEAT_DIR" --type f \
  | fzf \
      --height 80% \
      --layout reverse \
      --border \
      --preview 'bat --style=numbers --color=always {}'
)

[ -z "$selected" ] && exit 0

bat "$selected"
