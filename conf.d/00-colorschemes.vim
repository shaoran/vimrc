" open with the default color scheme

" setting 256 termial color, see
" https://vim.fandom.com/wiki/256_colors_in_vim
set t_Co=256

if v:version < 900
	" colorscheme default
	colorscheme peachpuff
	syntax on

	set bg=dark

	" visual selection because of peachpuff color scheme
	" and my normal foreground color
	hi Visual ctermbg=black
	hi Search ctermbg=5
	hi mailSubject ctermbg=2

	hi htmlH1 ctermbg=5
	hi htmlTitle ctermbg=5
	hi Title cterm=bold ctermfg=51

endif

if v:version >= 900
	colorscheme default
	set bg=dark
	syntax on
endif

" this colors work indenpently of the scheme

" colors for the tabs
hi TabLine cterm=None ctermfg=white ctermbg=DarkBlue
hi TabLineFill ctermfg=DarkBlue
hi TabLineSel ctermfg=DarkBlue ctermbg=White cterm=underline,italic


" colors for statusline
hi StatusLine cterm=bold ctermbg=red ctermfg=white
hi StatusLineNC ctermfg=grey ctermbg=black

" color of comments
hi Comment ctermfg=4

hi htmlH1 cterm=bold ctermfg=033
hi htmlH2 cterm=bold ctermfg=032
hi htmlH3 cterm=bold ctermfg=031
hi htmlH4 cterm=bold ctermfg=034
hi htmlH5 cterm=bold ctermfg=035
hi htmlH6 cterm=bold ctermfg=036

" see https://stackoverflow.com/questions/9464844/how-to-get-group-name-of-highlighting-under-cursor-in-vim
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
