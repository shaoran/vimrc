au BufRead,BufNewFile,FileType,Syntax * set noexpandtab
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'pyrex' | set expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'python' | set sw=4 ts=4 sts=4 expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'rst' | set expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'ruby' | set sw=2 ts=2 sts=2 expandtab expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'ruby' | set sw=2 ts=2 sts=2 expandtab expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'yaml' | set sw=2 ts=2 sts=2 expandtab | endif
au BufRead,BufNewFile,FileType,Syntax * if &ft == 'markdown' | set sw=4 ts=4 sts=4 expandtab | endif
au BufRead,BufNewFile,FileType,Syntax *.htmld set ft=htmldjango

autocmd BufRead,BufNewFile,FileType,Syntax ~/.mozilla/firefox/dw3dcqwf.default/itsalltext/stackoverflow.* set ft=markdown expandtab textwidth=80 wrap
autocmd BufRead,BufNewFile,FileType,Syntax /tmp/*-text-aid-too* set ft=markdown expandtab textwidth=80 wrap


au BufNewFile,BufRead *.redmine set filetype=redminewiki
