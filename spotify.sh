function currentPlaying () {
  if [[ $(osascript -e 'tell application "Spotify" to player state as string' 2> /dev/null) == *"playing"* ]]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string' 2> /dev/null`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string' 2> /dev/null`;
    echo " "$track" ("$artist")"
  fi
}

#if [ -n "$BASH_VERSION" ]; then
#  PS1="\n\[\033[01;30m\]\h\[\033[38;5;85m\]\$(currentPlaying)\[\033[01;39m\] \W \[\033[31m\]\$(parse_git_branch) \[\033[01;31m\]$\[\033[00m\] "
#fi
