# ~/.zprofile
# Runs once for each login shell.
# On macOS, Terminal/iTerm/Ghostty usually start login shells, so this runs at session start.
#
# Use this file for:
# - environment variables (export ...)
# - PATH setup
# - tools that need to be available before the shell is interactive (e.g. Homebrew)
#
# Keep this light. Avoid aliases, prompts, or interactive-only config here.

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
