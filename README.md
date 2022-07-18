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

## [Plugin Management](https://github.com/wbthomason/packer.nvim)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Install Plugins

Execute vim command:

```vim
:PackerUpdate
```
