# PATH
# export PATH=~/bin:~/QtSDK/Desktop/Qt/473/gcc/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
# 
# General
export PAGER=less

# Ruby
export RUBYOPT=-rrubygems

# export GREP_OPTIONS='--color=auto' 
# export GREP_COLOR='1;36'

# export EDITOR="mate -w"
export EDITOR="/Users/peter/bin/vim"
# # export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin
# # export PATH=$PATH:~/compiledir/SuperCollider3/mac
# 
# # Macports ----------------
# # export PATH=$PATH:/opt/local/bin
# # export MANPATH=$MANPATH:/opt/local/share/man
# # export INFOPATH=$INFOPATH:/opt/local/share/info
# 
# # Ruby  ----------------
export PATH=$PATH:/Library/Ruby/Gems/1.8/gems
# # export PATH=$PATH:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/gem
# 
# # Setting PATH for MacPython 2.5 ----------------
# # The orginal version is saved in .bash_profile.pysave
# # PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
# # export PATH
# 
# export CLANG=~/src/clang
# export PATH=$PATH:$CLANG

# export JAVA_HOME=/usr/libexec/java_home
# 
# export ANT_HOME=/usr/local/ant
# export PATH=${PATH}:${ANT_HOME}/bin

#export PATH=$PATH:~/src/homebrew/bin
# export CC=/usr/bin/gcc-4.0 
# export CPP=/usr/bin/cpp-4.0 
# export CXX=/usr/bin/g++-4.0 

#export PKG_CONFIG_PATH="/usr/local/lib"

# export SVN_EDITOR='mate -w'
export SVN_EDITOR=$EDITOR

export PYTHONPATH=/usr/bin/python
export PATH=$PATH:~/sclang

# export GIT_EXTERNAL_DIFF=~/bin/extDiffMerge
# export GIT_EXTERNAL_DIFF=~/bin/extFileMerge
# export GIT_EXTERNAL_DIFF=~/bin/extKdiff3
# export GIT_EXTERNAL_DIFF=~/bin/extDiffMerge
# export GIT_EXTERNAL_DIFF=~/bin/extVimDiff

export PATH=$PATH:/Users/peter/SDKs/android-sdk-mac_x86/platform-tools

# export QTDIR='/Users/peter/QtSDK/Desktop/Qt/473/gcc'

# export PATH=$PATH:'/Applications/Racket v5.1.1/bin/'
# export DYLD_FRAMEWORK_PATH='/Applications/Racket v5.1.1/lib'
# export DYLD_LIBRARY_PATH=/Users/peter/sclang

export HOMEBREW_VERBOSE

BREW_PREFIX=`brew --prefix`
export PATH=$BREW_PREFIX/share/python:$BREW_PREFIX/bin:$BREW_PREFIX/sbin:$PATH
export PYTHONPATH=$BREW_PREFIX/lib/python:$PYTHONPATH

export TORTOISEHG_PATH=~/hg_repos/TortoiseHg
