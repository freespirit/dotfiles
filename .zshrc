setopt NO_CASE_GLOB
autoload -Uz compinit && compinit # e.g. for git autocomplete

setopt PROMPT_SUBST

source ~/.git-prompt.sh

# Format: name@host; colored dir; colored git branch; %
export PROMPT='%n@%m %F{33}%2~%f %F{191}$(__git_ps1 "(%s) ")%f%# '

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
