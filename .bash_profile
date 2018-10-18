# User defined bash aliases, exported PATHs, etc.

# git aliases
alias gfgr='git fetch;git rebase'
alias gl='git log'
alias glp='git log --pretty=format:"%C(yellow)%h%Creset - %C(white)%ad %C(blue)%an:%n    %s%n" --date=local'
alias gs='git status'
alias gsh='git stash'
alias gco='git checkout'
alias gpo='git push --progress origin'
alias gshgp='git stash;git pull'

alias la='ls -a'
alias ll='ls -laG'
alias l='ls'

# git branch coloring
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}
export PS1="\h/\u:\[\033[0;34m\]\W\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\] $ "

# git auto-completion
source ~/.git-completion.bash

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# python pip installations per user
PATH="${PATH}:/Users/stan0/Library/Python/3.6/bin"
export PATH
