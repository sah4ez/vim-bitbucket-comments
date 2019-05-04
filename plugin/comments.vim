if exists("g:loaded_comments")
  finish
endif
let g:loaded_comments = 1

command! CMTLoad call comments#Load()<CR>
command! CMTDownload call comments#Download()<CR>
command! CMMakeComment call comments#MakeComment()<CR>

nnoremap <space>lcc :CMTLoad
nnoremap <space>lcd :CMTDownload
nnoremap <space>lcm :CMMakeComment
autocmd BufRead *.comments :set syntax=comments
