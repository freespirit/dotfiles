# dotfiles
A bunch of .files used to customise my Terminal

# What's inside
Most of it is simple coloring and aliases - nothing special. This repo is intended more as a backup than as a showoff.

Yet, some highlights:

 * using colors in `ls`:
    ```
    alias ll='ls -laG'

 * displaying the current git branch (if there is one ):
    * bash: 
        ```
        parse_git_branch() {
            git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
        }
        export PS1="\h/\u:\[\033[0;34m\]\W\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\] $ "
    * zsh:
        ```
        autoload -Uz compinit && compinit # e.g. for git autocomplete
        setopt PROMPT_SUBST
        source ~/.git-prompt.sh // copied from the official git repo
        # export PROMPT with `$(__git_ps1 "(%s) ")` in it. In my case, wrapped in DarkOliveGreen1 - %F{191} ... %f
        export PROMPT='%n@%m %F{33}%2~%f %F{191}$(__git_ps1 "(%s) ")%f%# '

 * using various aliases for git commands, one of which is a short (and colorful) version of `log`:
    ```
    alias glp='git log --pretty=format:"%C(yellow)%h%Creset - %C(white)%ad %C(blue)%an:%n    %s%n" --date=local'

Most of the functionality is inspired by (or copied from) different sources a long time ago and as time has passed none could be cited now.
