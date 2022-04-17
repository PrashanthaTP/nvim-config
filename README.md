# Neovim Configuration in Lua

## Version 

```bash
NVIM v0.7.0
Build type: RelWithDebInfo
LuaJIT 2.1.0-beta3
Compiled by runneradmin@fv-az320-113

Features: -acl +iconv +tui
See ":help feature-compile"

   system vimrc file: "$VIM\sysinit.vim"
  fall-back for $VIM: "C:/Program Files/nvim/share/nvim"

Run :checkhealth for more info
```

## Folder Structure

```
|   init.lua
|   README.md
|   
+---colors
+---compiler
+---ftdetect
+---ftplugin
+---indent
+---lua
|       minimal.lua
|       
+---plugin
\---syntax
```

## Guide

- This folder must be in Runtime path 

## Lua Guide

### Standard libraries

- use 'debug' library for getting src filename, lineno etc info

### variables 

- use 'local' keyword make it local
- string
  - regex has different syntax like `%w` for alphanumeric
    - more info : [lua-pattern-matching](https://riptutorial.com/lua/example/20315/lua-pattern-matching)

### tables

- iterate using pairs and ipairs
  - ipairs : non-numeric keys are ignored
  - more info [Stackoverflow : difference-of-pairs-vs-ipairs-in-lua](https://stackoverflow.com/questions/55108794/what-is-the-difference-of-pairs-vs-ipairs-in-lua)
k

- use square brackets around key when key is a string
  - examples

  ```lua
  -- access using key_as_string["key"]
  local key_as_string = {["key"] : 1}

  -- access using key_as_string.key
  local key_as_string = {key : 1}

  ```

### Conditions

- for negations use `not`

