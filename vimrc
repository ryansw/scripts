set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'tmux-plugins/vim-tmux'

Plugin 'tpope/vim-git'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'

Plugin 'tell-k/vim-autopep8'

Plugin 'dracula/vim', { 'name': 'dracula' }

nnoremap <C-n> :NERDTreeToggle<CR>

call vundle#end()
filetype plugin indent on
syntax on
colorscheme koehler

let g:is_bash=1

set shiftwidth=4
set softtabstop=4
set tabstop=4
set nowrap
set path=./**
set wildmenu
set wildignore+=./build
set wildignore+=./.git

set ignorecase smartcase
set grepprg=grep\ -IrsnH
set backspace=indent eol

autocmd Filetype c setlocal sw=4 expandtab
autocmd Filetype cpp setlocal sw=4 expandtab
autocmd Filetype python setlocal sw=4 expandtab

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>
