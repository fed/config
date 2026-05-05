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

# Auto-run `nvm use` when entering a directory with .nvmrc
autoload -U add-zsh-hook

load-nvmrc() {
  if [ -f .nvmrc ]; then
    nvm use
  fi
}

add-zsh-hook chpwd load-nvmrc

# Also run when starting a new shell
load-nvmrc
