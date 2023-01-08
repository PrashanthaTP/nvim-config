if !exists('g:loaded_netrwPlugin')
  finish
endif
 if exists("g:loaded_netrwPlugin_custom")
     finish
 endif 
 let g:loaded_netrwPlugin_custom = 1

let g:netrw_winsize = 30
