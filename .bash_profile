# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Android SDK
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Built-in Apache Server
alias apache:start='sudo apachectl start && echo "server started"'
alias apache:stop='sudo apachectl stop && echo "server stopped"'
alias apache:restart='sudo apachectl restart && echo "server restarted"'
alias apache:cd='cd /Library/WebServer/Documents'

# General Aliases
alias ll='ls -lhFa'
alias ws='cd ~/workspace'
alias awake='pmset noidle'

# App Aliases
alias sublime='open -a "Sublime Text"'
alias vscode='open -a "Visual Studio Code - Insiders"'
alias nuclide='open -a Atom'
alias fork='open -a Fork'
alias ia='open -a "IA Writer"'

# Git goodness
source ~/.git-completion.bash
source ~/.git-prompt.sh

function __git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

function __git_branch {
  __git_ps1 "[%s]"
}

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color
  # regular colors
  local K="\[\033[1;30m\]"    # black
  local R="\[\033[1;31m\]"    # red
  local G="\[\033[1;32m\]"    # green
  local Y="\[\033[1;33m\]"    # yellow
  local B="\[\033[1;34m\]"    # blue
  local M="\[\033[1;35m\]"    # magenta
  local C="\[\033[1;36m\]"    # cyan
  local W="\[\033[1;37m\]"    # white
  local UC=$W                 # user's color
  [ $UID -eq "0" ] && UC=$R   # root's color
  PS1="$C\u$W@$B\h$C[$W\w$C]$G\$(__git_branch)$R\$(__git_dirty)$W+$NONE "
}

bash_prompt
unset bash_prompt
