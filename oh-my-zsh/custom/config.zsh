ZSH_THEME="driconoster"

source $HOME/dotfiles/bash/utils
source $HOME/dotfiles/bash/spotify

bindkey -v

# makes ^R work as recursive search (instead of redo)
bindkey "^R" history-incremental-search-backward
