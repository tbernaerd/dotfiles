# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# main alias
alias g='git'

# The rest of my fun git aliases
alias gs="git status"
alias gp='git pull --prune'
alias gpu='git push origin HEAD'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gco='git commit'
alias gc='git checkout'
alias gb='git branch'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A' # stages all

# List contributors per repo
alias whodunit='git shortlog -sn'
