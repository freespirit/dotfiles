autoload -Uz compinit && compinit # e.g. for git autocomplete

setopt AUTO_CD
setopt CORRECT
setopt NO_CASE_GLOB
setopt PROMPT_SUBST

# Add git branch/repo to the prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
source ~/.git-prompt.sh

# Format: colored dir; colored git branch; %
export PROMPT='%B%F{blue}%2~%f %F{yellow}$(__git_ps1 "(%s) ")%f%# '

alias la='ls -a'
alias ll='ls -laG'
alias l='ls'

# git aliases
alias gfgr='git fetch;git rebase'
alias gl='git log'
alias glp='git log --pretty=format:"%C(yellow)%h%Creset - %C(white)%ad %C(blue)%an:%n    %s%n" --date=local'
alias gs='git status'
alias gsh='git stash'
alias gco='git checkout'
alias gpo='git push --progress origin'
alias gshgp='git stash;git pull'

function xman() { open x-man-page://$@ ; }

