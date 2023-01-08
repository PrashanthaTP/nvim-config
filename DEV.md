# Dev

## Vim Folder Structure

- [LearnVimScriptTheHardWay](https://learnvimscriptthehardway.stevelosh.com/chapters/42.html#:~:text=~%2F.,-vim%2Fafter%2F&text=vim%2Fafter%2F%20directory%20is%20a,to%20override%20Vim's%20internal%20files)

- [after directory](https://vi.stackexchange.com/questions/12731/when-to-use-the-after-directory)



## Lua Guide

### Standard libraries

- use 'debug' library for getting src filename, lineno etc info

### Variables 

- use 'local' keyword make it local
- string
  - regex has different syntax like `%w` for alphanumeric
    - more info : [lua-pattern-matching](https://riptutorial.com/lua/example/20315/lua-pattern-matching)

### Tables

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

### Othes

- [Difference between `.` and `:` while calling functions](https://www.tutorialspoint.com/difference-between-and-in-lua-programming)

## Dev

- Shell related settings
  + https://vi.stackexchange.com/questions/22869/how-can-neovim-on-windows-be-configured-to-use-gitbash-as-the-shell-without-brea


