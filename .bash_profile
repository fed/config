# load nvm
export NVM_DIR="/Users/fknussel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# aliases
alias ll='ls -lhFa'
alias ws='cd ~/workspace'
alias sublime='open -a "Sublime Text"'
alias sourcetree='open -a Sourcetree'
alias awake='pmset noidle'

alias apache:start='sudo apachectl start && echo "server started"'
alias apache:stop='sudo apachectl stop && echo "server stopped"'
alias apache:restart='sudo apachectl restart && echo "server restarted"'
alias apache:cd='cd /Library/WebServer/Documents'

alias hidden:show='defaults write com.apple.finder AppleShowAllFiles YES && echo "Hold the Option/alt key, then right click on the Finder icon in the dock and click Relaunch."'
alias hidden:hide='defaults write com.apple.finder AppleShowAllFiles NO && echo "Hold the Option/alt key, then right click on the Finder icon in the dock and click Relaunch."'

# git goodness
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
