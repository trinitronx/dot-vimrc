" This file contains useful vim functions and keybindings for them

function! CleanScript()
  :%s/
"  :%s///g
  :%s/\[K//g
  :%s///g
  :%s///g
  :%s///g
  :%s/^C//g
endf

nnoremap <M-m> :execute CleanScript()<CR>