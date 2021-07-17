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

call vundle#end()
filetype plugin indent on

syntax on
set number
set norelativenumber
set splitright
set splitbelow


set background=dark
set termguicolors

colo dankneon

source ~/.vim/vimtermcolors

let g:gitgutter_sign_allow_clobber = 1
hi SignColumn guibg=NONE guifg=white

hi GitGutterChange	guifg=#ff9900 guibg=NONE
hi GitGutterAdd		guifg=#20ff20 guibg=NONE
hi GitGutterDelete	guifg=#ff0000 guibg=NONE

hi Pmenu guibg=#3f3f4d

hi YcmWarningLine guibg=#000000
hi YcmWarningSection guibg=#454545

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

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
	\ 'colorscheme': 'one',
	\ }

source ~/.vim/visual-at.vim
