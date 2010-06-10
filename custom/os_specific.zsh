system_name=`uname -a`

case $system_name in
  Darwin*)
    for config_file ($ZSH/custom/osx/*.zsh) source $config_file
    ;;
  *)
    for config_file ($ZSH/custom/linux/*.zsh) source $config_file
    ;;;
esac