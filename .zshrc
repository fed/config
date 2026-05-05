# ~/.zshrc
# Runs for every interactive shell.
# This is executed for each new tab/window.
#
# Use this file for:
# - aliases
# - prompt/theme (e.g. pure)
# - keybindings
# - plugins and completions
#
# Avoid heavy environment setup here (like PATH) since it runs often.

# pure - this needs to come first
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias ll='ls -lhFa'
alias ws='cd ~/workspace'
alias awake='caffeinate -u -t 3600'
alias beep='echo -e "\a"'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias vscode='open -a "Visual Studio Code"'
alias sublime='subl'
alias merge='open -a "Sublime Merge"'

# replace cat with bat
function cat () {
  command bat "$@"
}
