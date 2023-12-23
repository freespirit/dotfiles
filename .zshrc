fpath+=~/.zfunc
autoload -Uz compinit && compinit # e.g. for git autocomplete

setopt AUTO_CD
setopt CORRECT
setopt NO_CASE_GLOB
setopt PROMPT_SUBST

# Add git branch/repo to the prompt
## This is the zsh-style way
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#zstyle ':vcs_info:*' enable git
#zstyle ':vcs_info:git:*' formats '%F{221}%b%f'
## This is the git way
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
source ~/.git-prompt.sh

export LSCOLORS=Fxfxcxdxbxegedabagacad
# Format: colored dir; colored git branch; %
export PROMPT='%B%F{blue}%2~%f %F{yellow}$(__git_ps1 "(%s) ")%f '

alias ll='ls -alG'
alias l='ls -lG'

# git aliases
alias gl='git log'
alias glp='git log --pretty=format:"%C(yellow)%h%Creset - %C(white)%ad %C(cyan)%an:%n    %s%n" --date=local'
alias gs='git status -sb'
alias gsh='git stash'
alias gco='git checkout'
alias gpo='git push --progress origin'

function xman() { open x-man-page://$@ ; }

