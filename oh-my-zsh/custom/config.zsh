ZSH_THEME="driconoster"

alias please=sudo
source $HOME/dotfiles/bash/utils
source $HOME/dotfiles/bash/spotify

bindkey -v

# makes ^R work as recursive search (instead of redo)
bindkey "^R" history-incremental-search-backward

# configures GPG terminal for signing commits
export GPG_TTY=$(tty)

java11(){
  export JAVA_HOME=`/usr/libexec/java_home -v 11`
}
java8(){
  export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
}

java8
