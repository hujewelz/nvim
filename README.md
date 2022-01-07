## [Installing NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```shell
brew install neovim
```

## Config NeoView

Make a *nvim* directory in *.config* directory in your home directory:

```bash
mkdir -p ~/.config/vim

nvim init.vim
```

## [vim plug](https://github.com/junegunn/vim-plug)

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install Plugins

Execute vim command:

```vim
:PlugInstall
```
