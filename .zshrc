autoload -Uz compinit && compinit # e.g. for git autocomplete

setopt AUTO_CD
setopt CORRECT
setopt NO_CASE_GLOB
setopt PROMPT_SUBST

# Add git branch/repo to the prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%F{221}%b%f'

# Format: colored dir; colored git branch; %
export PROMPT='%B%F{32}%2~%f%b ${vcs_info_msg_0_} %# '

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

