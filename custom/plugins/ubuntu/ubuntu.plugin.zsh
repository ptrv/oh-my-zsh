# Aliases ###################################################################
# These are for more obscure uses of apt-get and aptitude that aren't covered
# below.
# alias ag='apt-get'

# Some self-explanatory aliases
alias acs="apt-cache search"

# apt-file
alias afs='apt-file search --regexp'


# These are apt-get only
alias asrc='apt-get source'
alias ap='apt-cache policy'

# commands using sudo #######
alias aac='sudo apt-get autoclean'
alias abd='sudo apt-get build-dep'
alias ac='sudo apt-get clean'
alias aud='sudo apt-get update'
alias adg='sudo apt-get update && sudo apt-get upgrade'
alias adu='sudo apt-get update && sudo apt-get dist-upgrade'
alias afu='sudo apt-file update'
alias aug='sudo apt-get upgrade'
alias ai='sudo apt-get install'
# Install all packages given on the command line while using only the first word of each line:
# acs ... | ail
alias ail="sed -e 's/  */ /g' -e 's/ *//' | cut -s -d ' ' -f 1 | "' xargs sudo apt-get install'
alias ap='sudo apt-get purge'
alias ar='sudo apt-get remove'

# apt-get only
alias ads='sudo apt-get dselect-upgrade'

# Install all .deb files in the current directory.
# Warning: you will need to put the glob in single quotes if you use:
# glob_subst
alias di='sudo dpkg -i ./*.deb'


# Create a basic .deb package
alias mydeb='time dpkg-buildpackage -rfakeroot -us -uc'

# Functions #################################################################
# create a simple script that can be used to 'duplicate' a system
apt-copy() {
    print '#!/bin/sh'"\n" > apt-copy.sh

    cmd='apt-get install'

    for p in ${(f)"$(aptitude search -F "%p" --disable-columns \~i)"}; {
        cmd="${cmd} ${p}"
    }

    print $cmd "\n" >> apt-copy.sh

    chmod +x apt-copy.sh
}

# Prints apt history
# Usage:
#   apt-history install
#   apt-history upgrade
#   apt-history remove
#   apt-history rollback
#   apt-history list
# Based On: http://linuxcommando.blogspot.com/2008/08/how-to-show-apt-log-history.html
apt-history () {
  case "$1" in
    install)
      zgrep --no-filename 'install ' $(ls -rt /var/log/dpkg*)
      ;;
    upgrade|remove)
      zgrep --no-filename $1 $(ls -rt /var/log/dpkg*)
      ;;
    rollback)
      zgrep --no-filename upgrade $(ls -rt /var/log/dpkg*) | \
        grep "$2" -A10000000 | \
        grep "$3" -B10000000 | \
        awk '{print $4"="$5}'
      ;;
    list)
      zcat $(ls -rt /var/log/dpkg*)
      ;;
    *)
      echo "Parameters:"
      echo " install - Lists all packages that have been installed."
      echo " upgrade - Lists all packages that have been upgraded."
      echo " remove - Lists all packages that have been removed."
      echo " rollback - Lists rollback information."
      echo " list - Lists all contains of dpkg logs."
      ;;
  esac
}

# Kernel-package building shortcut
kerndeb () {
    # temporarily unset MAKEFLAGS ( '-j3' will fail )
    MAKEFLAGS=$( print - $MAKEFLAGS | perl -pe 's/-j\s*[\d]+//g' )
    print '$MAKEFLAGS set to '"'$MAKEFLAGS'"
        appendage='-custom' # this shows up in $ (uname -r )
    revision=$(date +"%Y%m%d") # this shows up in the .deb file name

    make-kpkg clean

    time fakeroot make-kpkg --append-to-version "$appendage" --revision \
        "$revision" kernel_image kernel_headers
}
