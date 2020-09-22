" loading vim configuration from ~/.vim/conf.d

" To use this file in a different directory like ~/.vimrc-yanez
"
" mkdir ~/bin
" edit bin/yvim
"
"   #!/bin/bash
"   exec vim -u ~/.vimrc-yanez/vimrc "${@}"
"
" chmod 755 bin/yvim
" add ~/bin to your PATH
"
" cd ~/.vimrc-yanez/conf.d
" ln -fs 01-tabs.vim 29-tabs.vim
"
" edit the plug_dir variable
"
" enable line setting runtimepath
"
" add the folliwing line to .bashrc
" alias ey='source ~/.yanez.env'

let $plug_dir='~/.vim/plugged'
"let &rtp = '~/.vimrc-yanez,' . &rtp

runtime! conf.d/*.vim
