set viminfo+=n~/.vim/viminfo

set nocompatible " Vundle
filetype off " no clue what that does but Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/youcompleteme'
Plugin 'raimondi/delimitmate'
Plugin 'taglist.vim'
Plugin 'lervag/vimtex'
Plugin 'itspriddle/vim-shellcheck'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sheerun/vim-polyglot'
Plugin 'sainnhe/edge'

call vundle#end()
filetype plugin indent on

packadd! termdebug

syntax on
set number
set norelativenumber
set splitright
set splitbelow
set foldmethod=syntax
set noshowmode
set mouse=a

autocmd BufRead * normal zR
autocmd ColorScheme * source ~/.vim/vimtermcolors

let &t_ut=''

let g:termBackgroundColor = substitute(system('echo $(kitty @get-colors background | grep -P "^background" | cut -d "#" -f2)'), '\n', '', 'g')
autocmd VimLeavePre * exec 'call Set_term_bg("'. g:termBackgroundColor .'")'

function Set_term_bg(color)
	silent exec "!set_term_bg '\\\#" . a:color . "'"
	redraw!
endfunction

set termguicolors

if !(exists('g:colors_name'))
	colo dankneon
	hi SignColumn guibg=NONE guifg=white

	hi GitGutterChange	guifg=#ff9900 guibg=NONE
	hi GitGutterAdd		guifg=#20ff20 guibg=NONE
	hi GitGutterDelete	guifg=#ff0000 guibg=NONE

	hi Pmenu guibg=#3f3f4d

	hi YcmWarningLine guibg=#000000
	hi YcmWarningSection guibg=#454545
endif

let g:nightflyTransparent = 1
let g:edge_transparent_background = 1
let g:edge_show_eob = 1
let g:edge_diagnostic_edge_highlight = 1
let g:edge_disable_italic_comment = 1

let g:gitgutter_sign_allow_clobber = 1
let g:termdebug_wide = 1

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsListSnippets="<c-k>"

let g:mapleader = "\<Space>"

map <leader>u :set number! relativenumber!<CR>
map <leader><CR> :vert term<CR>

map <leader>t<up> :tabr<CR>
map <leader>t<right> :tabn<CR>
map <leader>t<left> :tabp<CR>
map <leader>t<down> :tabl<CR>

nmap <C-W>+ <C-W>+<SID>ws
nmap <C-W>- <C-W>-<SID>ws
nn <script> <SID>ws+ <C-W>+<SID>ws
nn <script> <SID>ws- <C-W>-<SID>ws
nmap <SID>ws <Nop>
nnoremap <lt> <C-W><lt>
nnoremap > <C-W>>

nnoremap <leader>n :NERDTreeToggle<CR>
nmap <leader>D <plug>(YCMHover)

set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'edge',
	\ 'active': {
	\ 	'left': [ 
	\   	[ 'mode', 'paste' ],
	\ 		[ 'gitbranch', 'readonly', 'filename', 'modified', 'buffernumber' ]
	\ 	]
	\ },
	\ 'component': {
	\		'buffernumber': '%n'
	\	},
	\ 'component_function': {
	\ 	'gitbranch': 'FugitiveHead'
	\ }
	\ }

source ~/.vim/visual-at.vim
