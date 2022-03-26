kitty + complete setup fish | source

alias nv='nvim'
alias ls='env LC_COLLATE=C exa -bgh --color=always --group-directories-first --time-style=long-iso'
alias less='less -r'
alias rm="rm -I"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias diff="diff --color"
alias ip="ip -color=auto"
alias su="su -s /usr/bin/fish"
alias tree="tree -C"
alias ping="prettyping --nolegend"
alias clear-orphans="pacman -Qtdq | sudo pacman -Rns -"
alias gdu-root="gdu / -x -i=/sys,/proc,/dev"

set -x EDITOR "nvim"
set -x VISUAL "nvim"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x JAVA_HOME "/usr/lib/jvm/java-17-openjdk/"
set -x M2_HOME "/opt/maven"
set -x PATH "$PATH:$HOME/.dotnet/tools:$HOME/.cache/rebar3/bin:$JAVA_HOME/bin"

starship init fish | source
ssh-add ~/.ssh/github 2>/dev/null

