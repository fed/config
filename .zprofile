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

# Add Homebrew to PATH (and other env vars) so brew-installed tools work in the shell
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Sublime Text CLI (`subl`) so you can open files/projects from the terminal
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Add user-level binaries (used by tools like Claude Code) installed in ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"
