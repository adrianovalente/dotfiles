> These are my custom configs for vim, zsh and other stuff

## Getting Started
Just run the `update-dotfiles` executable script file

``` bash
./update-dotfiles
```

## Automatic Updates
Once these dotfiles are setup for the first time, a `update_dotfiles` function will be added to the environment. Running it will update plugins from Git and replace `.vimrc` and `.oh-my-zsh/custom/*` files with the ones stored in this repository.
