vim.cmd(
[[
if has("win32")
 let &shell='"C:/Program Files/Git/bin/sh.exe"'
 let &shellcmdflag = '-c'
 let &shellredir = '>%s 2>&1'
 set shellquote= shellxescape=
 " set noshelltemp
 set shellxquote=
 " important to have shellslash
 set shellslash
 let &shellpipe='2>&1| tee'
" let $TMP='"C:/Program Files/Git/tmp"'
endif
]])
