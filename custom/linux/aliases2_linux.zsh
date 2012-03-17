export MYTEMP=~/Documents/Temp
export MYCODECPP=~/development
export MYCODERUBY=~/development_ruby
export MYCODEPYTHON=~/development_python
export MYCODEJAVA=~/development_java
export MYDOWNLOADS=~/Downloads
export MYDOCUMENTS=~/Documents
export MYUNI=~/tu
export MYAPPS=~/applications
export MYSUPERCOLLIDER=~/scwork

# commands to change dirs
alias to.temp='cd ${MYTEMP}'
alias to.downloads='cd ${MYDOWNLOADS}'
alias to.docs='cd ${MYDOCUMENTS}'
alias to.cpp='cd ${MYCODECPP}'
alias to.ruby='cd ${MYCODERUBY}'
alias to.python='cd ${MYCODEPYTHON}'
alias to.java='cd ${MYCODEJAVA}'
alias to.uni='cd ${MYUNI}'
alias to.apps='cd ${MYAPPS}'
alias to.sc='cd ${MYSUPERCOLLIDER}'

#OFten useful to prefix with SUDO to see more system level network usage
alias network.connections='sudo lsof -l -i +L -R -V'
alias network.established='sudo lsof -l -i +L -R -V | grep ESTABLISHED'
