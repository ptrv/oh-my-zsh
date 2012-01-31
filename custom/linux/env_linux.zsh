#export PATH=/home/peterv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/jdk/bin:/usr/local/ant/bin:/usr/local/maven/bin

# PATH
export PATH=$PATH:~/bin

# General
export PAGER=less

# Ruby
export RUBYOPT=-rrubygems

export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='1;36'


#export EDITOR="emacsclient -c"
export ALTERNATE_EDITOR=""
export EDITOR=vim
#export MATLAB="/usr/local/matlab7"
#export MATLAB_JAVA="/usr/local/matlab7/sys/java/jre/glnx86/jre1.4.2"
#LD_LIBRARY_PATH="/usr/local/matlab7/bin/glnx86:$LD_LIBRARY_PATH"
#export LD_LIBRARY_PATH
#export CC=gcc-4.3
#export VST_PLUGINS="~/vsts"
export VST_PATH="/home/peter/vsts"
export SC_SOURCE_DIR="~/compiledir/SuperCollider3"
# export QTDIR="/usr/share/qt4"

export PATH=$PATH:/var/lib/gems/bin

export JRUBY_HOME=~/src/jruby
export PATH=$PATH:$JRUBY_HOME/bin

export PYTHONPATH=/usr/lib/python2.6/site-packages:${PYTHONPATH}
export PYTHONSTARTUP=~/.pythonrc

export ANDROID_SDK=~/android-sdk-linux_x86
export PATH=$PATH:$ANDROID_SDK/tools

export PATH=$PATH:~/src/fast-export/bin

# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extP4diff
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extKdiff3
# export GIT_EXTERNAL_DIFF=/home/peter/bin/extDiffMerge

source /etc/profile.d/autojump.zsh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lin/jni

export RSENSE_HOME=~/opt/rsense-0.3

# Clang
# export CLANG_PATH=~/compilers/bin
# # scan build
# export SCANBUILD_PATH=~/compiledir/llvm/tools/clang/tools/scan-build
# export SCANBUILDVIEW_PATH=~/compiledir/llvm/tools/clang/tools/scan-view
# export PATH=$CLANG_PATH:$SCANBUILD_PATH:$SCANBUILDVIEW_PATH:$PATH

export JAVA_HOME=/usr/lib/jvm/java-6-sun

