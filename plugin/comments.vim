if exists("g:loaded_comments")
  finish
endif
let g:loaded_comments = 1

command! CMTLoad call comments#Load()
command! CMTDownload call comments#Download()
command! CMTMakeComment call comments#MakeComment()<`2`>

nnoremap <space>lcc :call comments#Load()<CR>
nnoremap <space>lcd :call comments#Download()<CR>
nnoremap <space>lcm :call comments#MakeComment()<CR>
autocmd BufRead *.comments :set syntax=comments
