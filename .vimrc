" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=~/tmp

" tell vim where to put swap files
set dir=~/tmp

" install pathogen
execute pathogen#infect()
set nocompatible
syntax on
filetype plugin indent on

" enable line numbers
set number

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

if $TMUX == ''
    set clipboard=unnamed
endif
set mouse=a

" Keep your cursor centered at least 10 lines from bottom
set scrolloff=10

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug '~/.vim/fzf.vim'

call plug#end()

" Key mapping for FZF plugin
nmap <leader>B :Buffers<CR>
nmap <leader>F :Files<CR>

" vimwiki/vimwiki
" Vimwiki Folding
" let g:vimwiki_folding='syntax'
" let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
