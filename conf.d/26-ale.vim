let g:ale_enabled = 0

let g:ale_fixers = {
\    'typescript': [ 'eslint' ],
\    'javascript': [ 'eslint' ],
\    'html': [ 'prettier' ],
\}

let g:ale_javascript_eslint_executable = '/home/shaoran/local/nodejs/node-v10.16.0-linux-x64/bin/eslint_d'
let g:ale_javascript_flow_use_global = 1

let g:ale_javascript_prettier_executable = '/home/shaoran/local/nodejs/node-v10.16.0-linux-x64/bin/prettier'

let g:ale_statusline_format = ['%d errors', '%d warnings', 'no errors']
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'html': [ 'htmlhint' ],
\}
let g:ale_lint_delay=100

noremap <C-l>e :ALEEnable<CR>
noremap <C-l>t :ALEToggleBuffer<CR>
noremap <C-l>f :ALEFix<CR>
noremap <C-l>n :ALENextWrap<CR>
noremap <C-l>p :ALEPreviousWrap<CR>
