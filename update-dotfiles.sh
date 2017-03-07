#!/bin/bash
echo 'Pulling .dotfiles from master...'
git pull origin master > /dev/null

echo 'Rewriting system dotfiles...'
ls | grep symlink | sed -e 's/.symlink//g' | xargs -I {} sh -c 'cp {}.symlink ~/.{}'

source ~/.bash_profile
echo 'Done'
