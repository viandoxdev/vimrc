set background=dark
let g:edge_style='default'
exec 'call Set_term_bg("'. g:termBackgroundColor .'")'
let g:lightline.colorscheme = 'edge'
runtime colors/edge.vim
call lightline#init()
call lightline#colorscheme()
