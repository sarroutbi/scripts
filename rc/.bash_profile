#echo ".bash_profile"
. /usr/scripts/bashrc.leet
. purple

if [ "$TMUX" == "" ]; then
  if tmux ls; then
    tmux att
  else
    tmux
  fi
fi
