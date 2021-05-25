# Default file mask.  New files will be created with -rw-rw-r-- permissions
umask 001

# Allow shortcut for filename using <Esc>
set filec

set history=50

# Default editor
setenv WINEDITOR /usr/bin/gvim

# For personal binaries
setenv PATH ${HOME}/bin:${PATH}
set path = ($path /home/s_dfeers/bin /sbin /usr/sbin /usr/local/sbin)

# Number to save across sessions
set savehist=50

set noclobber

set prompt="\n%{\033[36m%}%n\@%m%{\-33[0m%}: "

setenv GCC_COLORS "error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Personal locate database.  Not needed if a system-wide version is set up
set LOCATE_PATH = ($HOME/.mlocate/mlocate-db)
set VOB_ROOT = /vob/s_cndamod
if ( $?CLEARCASE_CMDLINE && ( ! -f $LOCATE_PATH || `stat -c "%Y" $LOCATE_PATH` + 43266 < `date +"%s"` )) then
  echo "Forking updateDB to background"
  updatedb -l 0 -o $LOCATE_PATH -U $VOB_ROOT --add-prunepaths "$VOB_ROOT/INCS" &
endf
