augroup customvimrc
	" remove all customvimrc autocommands
	autocmd!

	"au BufRead,BufNewFile,FileType,Syntax * set noexpandtab
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'pyrex' | setl expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'python' | setl sw=4 ts=4 sts=4 expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'rst' | setl expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'ruby' | setl sw=2 ts=2 sts=2 expandtab expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'ruby' | setl sw=2 ts=2 sts=2 expandtab expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'yaml' | setl sw=2 ts=2 sts=2 expandtab | endif
	au BufRead,BufNewFile,FileType,Syntax * if &ft == 'markdown' | setl sw=4 ts=4 sts=4 expandtab textwidth=80 wrap | endif
	au BufRead,BufNewFile,FileType,Syntax *.htmld setl ft=htmldjango

	au BufRead,BufNewFile ~/.ssh/config.d/*.ssh setl ft=sshconfig

	autocmd BufRead,BufNewFile,FileType,Syntax ~/.mozilla/firefox/dw3dcqwf.default/itsalltext/stackoverflow.* setl ft=markdown expandtab textwidth=80 wrap
	autocmd BufRead,BufNewFile,FileType,Syntax /tmp/withExEditor/** setl ft=markdown expandtab textwidth=80 wrap
	autocmd BufRead,BufNewFile,FileType,Syntax /tmp/*-text-aid-too* setl ft=markdown expandtab textwidth=80 wrap


	au BufNewFile,BufRead *.redmine setl filetype=redminewiki
augroup END
