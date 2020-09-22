" Not compatible to vi enables lots of other features,
" no need for vi compability
set nocompatible

" these are settings that should be set before anything else, like
" map leader

let mapleader='+'   " it's easier to reach as the default \
                    " the german keyboard has \ at a difficult position


" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Clear undo history when doing :e
set undoreload=0

" HerringtonDarkholme/yats.vim suggest doing this
" it made worse for me
"set re=1


" see https://vim.fandom.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
map <Leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
