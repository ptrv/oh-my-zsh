# aliases ----------------
alias sl=sl
alias lsd="ls -l | grep ^d"
alias treeh="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # tree with hidden files
# alias tree="find . ! -name '\.*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # tree without hidden files
# alias ll="ls -l"
# alias la="ls -a"
# alias lla="ls -la"

# Folder aliases
alias dropbox="open ~/Dropbox"
alias tutex="cd ~/tu/2.semester/latex_einfuehrung/aufgaben_mercurial"

# Utility
alias reload='source $ZSH/custom/linux/aliases_linux.zsh'
alias sz="echo 'source ~/.zshrc' && source ~/.zshrc"
alias ea='vim -f $ZSH/custom/linux/aliases_linux.zsh && reload' # Edit aliases
alias ee="vim $ZSH/custom/linux/env_linux.zsh"

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'
alias d='dirs -v'

# Essential
alias cp='cp -v'
alias mv='mv -iv'
alias rm='rm -v'
alias ln='ln -iv'
alias treea='tree -a'
alias nano=nano_or_sudo_nano

# Common -- Some are from Damian Conway
alias ls='ls --color'
alias a='ls -A' # -A all except literal . ..
alias la="ls -A -l -G"
alias c='clear'
# alias ..="cd .."
alias cdd='cd -'  # goto last dir cd'ed from
alias cl='clear; l'
alias cls='clear; ls'
alias hist='history'
alias l.='ls -d .[^.]*'
alias l='ls -lhGt'  # -l long listing, most recent first
                    # -G color
alias lh="ls -lh"
alias ll='ls -lhG'  # -l long listing, human readable, no group info
alias lt='ls -lt' # sort with recently modified first
alias md='mkdir -p'
alias mkdd='mkdir $(date +%Y%m%d)'
# alias s='cd ..'   # up one dir
# alias s.='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

# alias grep='grep -in' # --color=auto'  case insensitive grep

alias e='exit'
alias k9="killall -9"

# Finder
alias o='nautilus .'
# alias o='open .'
alias ff='open -a Firefox'

# General code

# Processes
# alias tu='top -o cpu' # cpu
# alias tm='top -o rsize' # memory

# Git
# alias git='hub'
# function git(){hub $@}
alias wtf="git-wtf"
alias gx="cola -r . &"
alias gk="gitk --all &"
alias ggui="git gui &"
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gd='git_diff'
alias gdm='git diff master'
alias gl='git pull'
alias gnp="git-notpushed"
alias gp='git push'
alias gst='git status'
alias t='tig'
alias gt='tig status'
alias g='git status'
alias eg='vim .git/config'
alias glog='git smart-log'
alias gsub='git branch --set-upstream'
alias gflow='git flow'
alias gls='git smart-pull'

# Mercurial
alias hge="vim .hg/hgrc"
alias hgk="hg view"

# Text editing
# Emacs
#alias emacs="emacsclient"
alias emm="emacsclient -n -c"
alias em="emacsclient -c"
alias emt="emacsclient -t"

# Cmake
function cmg(){cmake-gui $@ &}

# Django
alias djm="python manage.py"

# Ruby
alias r="rake"
alias irb='irb --readline -r irb/completion'

# # Rails
# alias ss='./script/server'
# alias sc='./script/console'
# alias sg='./script/generate'
# alias sp='./script/plugin'

# # Subversion
# alias sst="svn status"
# alias scom="svn commit"
# alias sex="svn export"
# alias sup="svn update"
# alias sco="svn checkout"
# alias sd='svn diff'
# alias slog='svn log | more'
# alias svnunhook="find . -name '.svn' -exec rm -rf {} \;"

# alias gcc="/usr/bin/gcc-4.0"
# alias cpp="/usr/bin/cpp-4.0"
# alias g++="/usr/bin/g++-4.0"

# package management
alias sapti="sudo apt-get install"
alias saptr="sudo apt-get remove"
alias saptu="sudo apt-get upgrade"
alias saptuu="sudo apt-get dist-upgrade"
alias saptd="sudo apt-get update"
alias saptc="apt-cache search"
alias sapts="apt-cache show"

# audacious2
alias play='audacious2'
alias aup='audacious2 -p'
alias aue='audacious2 -e'
alias auf='audacious2 -f'
alias aur='audacious2 -r'

alias gwd="pwd | xclip"

# removing dotfiles 
alias rm-Dot_svn="find . -name '.svn' -exec rm -rf '{}' \;"
alias rm-Dot_git="find . -name '.git' -exec rm -rf '{}' \;"

# iftop shows Bytes/sec
alias iftop="sudo iftop -B"

# osx pbcopy / pbpaste 
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# cpu info
alias cpuinfo='cat /proc/cpuinfo'

# xdg-open
alias open='xdg-open'

# tmux
# alias tmux="tmux -2"
alias tmux.python-dev="~/.tmux/python-dev"
alias tmux.default="~/.tmux/default"

# fossil
alias fos="fossil status"
alias foc="fossil commit"
alias fod="fossil diff | vim -R -"
alias fodv="fossil gdiff"
alias fou="fossil ui &"
