#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Cheatsheet
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📚
# @raycast.packageName Cheatsheets

osascript <<EOF
tell application "iTerm"
    create window with default profile
    tell current session of current window
        write text "~/.raycast/scripts/cheatsheet-picker.sh"
    end tell
end tell
EOF
