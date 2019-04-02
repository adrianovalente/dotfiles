#!/bin/bash

echo 'Pulling .dotfiles from master...'
git pull origin master > /dev/null

echo 'Rewriting system dotfiles...'
ls | grep symlink | sed -e 's/.symlink//g' | xargs -I {} sh -c 'cp {}.symlink ~/.{}'

if [ -d $HOME/.oh-my-zsh ]; then
  echo 'Updating oh-my-zsh custom configs...'
  cp -R ~/dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh/custom
fi

exec $SHELL
