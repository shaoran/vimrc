" these are settings that should be set before anything else, like
" map leader

let mapleader='+'   " it's easier to reach as the default \
                    " the german keyboard has \ at a difficult position


" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" HerringtonDarkholme/yats.vim suggest doing this
" it made worse for me
"set re=1
