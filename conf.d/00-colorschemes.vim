" open with the default color scheme

" setting 256 termial color, see
" https://vim.fandom.com/wiki/256_colors_in_vim
set t_Co=256

" colorscheme default
colorscheme peachpuff
syntax on

set bg=dark

" visual selection because of peachpuff color scheme
" and my normal foreground color
hi Visual ctermbg=black
hi Search ctermbg=5

hi htmlH1 ctermbg=5
hi htmlTitle ctermbg=5
hi Comment ctermfg=4

" colors for the tabs
hi TabLine cterm=None ctermfg=white ctermbg=DarkBlue
hi TabLineFill ctermfg=DarkBlue
hi TabLineSel ctermfg=DarkBlue ctermbg=White cterm=underline,italic
hi Title ctermfg=LightBlue ctermbg=green


" colors for statusline
hi StatusLine cterm=bold ctermbg=red ctermfg=white
hi StatusLineNC ctermfg=grey ctermbg=black
