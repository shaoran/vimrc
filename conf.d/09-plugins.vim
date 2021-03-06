" Manage plugins with vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin($plug_dir)

" git integration
Plug 'tpope/vim-fugitive'

" File management & search
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Search
Plug 'mileszs/ack.vim'        " plugin for silver-searcher
Plug 'ctrlpvim/ctrlp.vim'


" Syntax & languages
Plug 'pangloss/vim-javascript'

" es-lint
Plug 'w0rp/ale'

" plugin for editorconfig https://editorconfig.org/
Plug 'editorconfig/editorconfig-vim'

" python black
Plug 'shaoran/black', { 'branch': 'allow_override_args_19.10b0' }

" JSX syntax
Plug 'maxmellon/vim-jsx-pretty'

" TypeScript syntax
Plug 'HerringtonDarkholme/yats.vim'

" Better markdown syntax
Plug 'plasticboy/vim-markdown'

" Alignments
Plug 'godlygeek/tabular'

call plug#end()
