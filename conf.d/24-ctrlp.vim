let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --follow --nocolor -g "" --hidden'
endif
