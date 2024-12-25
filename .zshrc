# github.com/sindresorhus/pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias ll='ls -lhFa'
alias ws='cd ~/workspace'
alias awake='pmset noidle'
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
alias vscode='open -a "Visual Studio Code"'
alias sublime='open -a "Sublime Text"'
alias merge='open -a "Sublime Merge"'
