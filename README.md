# Neovim Configuration

## Version info

```bash
NVIM v0.8.2
Build type: RelWithDebInfo
LuaJIT 2.1.0-beta3
Compiled by runneradmin@fv-az28-353

Features: -acl +iconv +tui
See ":help feature-compile"

   system vimrc file: "$VIM\sysinit.vim"
  fall-back for $VIM: "C:/Program Files (x86)/nvim/share/nvim"

Run :checkhealth for more info
```
## Tip

set `XDG_CONFIG_HOME` in `~/.bash_profile` or `~/.bashrc`

```bash
export XDG_CONFIG_HOME=$HOME/.config
```
so that nvim config can be kept inside `$HOME/.config/nvim'


## Setup

### 1. Clone this repo

```bash
```

### 2. Package manager setup

+ Update this line in [packer.lua](after/plugin/packer.lua) {#packer-config-v1}
with custom location where the plugins to be stored
```lua
vim.opt.packpath:append("D:/Applications/Nvim/nvim")
```

+ Download `packer.nvim`

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 <path from previous step>/pack/packer/start/packer.nvim
 ```

+ Update package_root

```lua
require('packer').init(
{
	package_root = "D:/Applications/Nvim/nvim/pack"
}
```
