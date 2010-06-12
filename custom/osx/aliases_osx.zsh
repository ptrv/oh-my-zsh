# Aliases ----------------
alias pd=/Applications/Pd-extended.app/Contents/Resources/bin/pd
alias lsd="ls -l | grep ^d"
#alias treeh="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # tree with hidden files
# alias tree="find . ! -name '\.*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # tree without hidden files
# alias ll="ls -l"
# alias la="ls -a"
# alias lla="ls -la"

# Folder aliases
#alias sc3="cd ~/Library/Application\ Support/SuperCollider"
#alias apps="cd ~/Library/Application\ Support"
alias dropbox="open ~/Dropbox"

# Utility
alias reload='source $ZSH/custom/osx/aliases_osx.zsh'
alias ea='mate -w $ZSH/custom/osx/aliases_osx.zsh && reload' # Edit aliases
alias ee="mate $ZSH/custom/osx/env_osx.zsh"

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'
alias d='dirs -v'

# Essential
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias ln='ln -iv'
alias nano=nano_or_sudo_nano
alias treea='tree -a'

# Common -- Some are from Damian Conway
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
alias s='cd ..'   # up one dir
alias s.='cd ../..'
alias s..='cd ../../..'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

alias grep='grep -i' # --color=auto'  case insensitive grep

alias e='exit'
alias k9="killall -9"

# Finder
alias o='open . &'
# alias o='open .'
alias ff='open -a Firefox'

# General code

# Processes
alias tu='top -o cpu' # cpu
alias tm='top -o rsize' # memory

# Git
#alias git="hub"
alias wtf="git-wtf"
alias gx="gitx"
alias gk="gitk --all &"
alias ggui="git gui &"
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias gb='git branch -v'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gd='git diff | mate'
alias gdm='git diff master | mate'
alias gl='git pull'
alias gnp="git-notpushed"
alias gp='git push'
alias gst='git status'
alias gt='tig status'
alias t='tig'
alias g='git status'
alias eg='mate .git/config'
alias glog='git log'
alias glogo='git log --pretty=oneline --all'
alias glogn='git log --name-status'

# Mercurial
alias hgk="murky"

# Text editing
# Emacs
alias em="open -a Emacs"
alias emm="open -a Emacs ."

# TextMate
alias et="mate"
alias ett="mate ."
alias etr="mate app config lib db schema public spec test vendor/gems vendor/plugins Rakefile Capfile Vladfile Todofile README stories merb slices tasks features &"

# Ruby
alias r="rake"
alias irb='irb --readline -r irb/completion'

# # Rails
# alias ss='./script/server'
# alias sc='./script/console'
# alias sg='./script/generate'
# alias sp='./script/plugin'

# Subversion
alias swc="svnx -w pwd"

# todo.sh
# alias t="todo.sh"

# macports
alias sse="port list | grep"
alias spi="port info"
alias sin="sudo port install"
alias sun="sudo port uninstall"
# alias sportf="port info"

# other
alias unrtff="unrtf --text --verbose"

# alias gcc="/usr/bin/gcc-4.0"
# alias cpp="/usr/bin/cpp-4.0"
# alias g++="/usr/bin/g++-4.0"

alias gwd="pwd | pbcopy"

# removing dotfiles 
alias rm-DS_Store="find . -name '.DS_Store' -exec rm '{}' \;"
alias rm-Dot_svn="find . -name '.svn' -exec rm -rf '{}' \;"
alias rm-Dot_git="find . -name '.git' -exec rm -rf '{}' \;"
