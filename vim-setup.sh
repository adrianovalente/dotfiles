# Downloading .vimrc if necessary 
if [ ! -d ~/.dotfiles  ]; then
  echo 'dotfiles directory not found! Downloading .vimrc to '$HOME
  curl https://raw.githubusercontent.com/adrianovalente/dotfiles/master/vimrc.symlink > ~/.vimrc
fi

# Installing Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Installing Exstentions
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/romgrk/winteract.vim.git ~/.vim/bundle/winteract
git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
