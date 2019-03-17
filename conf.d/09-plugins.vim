" Manage plugins with vim-plug
" https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" git integration
Plug 'tpope/vim-fugitive'

" File management & search
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Search
Plug 'mileszs/ack.vim'        " plugin for silver-searcher
Plug 'ctrlpvim/ctrlp.vim'


" Syntax & languages
Plug 'pangloss/vim-javascript'

call plug#end()

