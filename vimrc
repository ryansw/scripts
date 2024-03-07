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

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'pedrohdz/vim-yaml-folds'

Plugin 'tpope/vim-markdown'

Plugin 'vim-latex/vim-latex'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'rhysd/vim-clang-format'

Plugin 'chrisbra/csv.vim'

silent! source ~/.vim/add_plugins.rc

nnoremap <C-n> :NERDTreeToggle<CR>

call vundle#end()

" Basic global settings
filetype plugin indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set textwidth=80
set colorcolumn=+1

set path=./**
set wildmenu
set wildignore+=./build
set wildignore+=./.git
set ignorecase smartcase
set grepprg=grep\ -IrsnH
set backspace=indent eol
set number
set ruler
set rnu
set spell
set nowrap

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" Terminal color stuff
set termguicolors
colorscheme koehler
silent! colorscheme dracula

" highlight ColorColumn guibg=DarkGrey
" highlight SpellBad guibg=DarkRed
" highlight SpellCap guibg=DarkRed
set background=dark

" I just want to use the scroll wheel, man...
set mouse=n
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
set mousem=""
:map <RightMouse> <nop>
:map <LeftMouse> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" LaTeX Suite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -shell-escape -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'evince'

" Enable clang formatting
autocmd FileType c,cpp ClangFormatAutoEnable

" Airline Setup
let g:airline_experimental = 1
let g:airline_detect_paste=1
let g:airline_detect_spell=0
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
silent! let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
let g:airline_section_y = ''
let g:airline_theme='deus'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Type Stuffs                                                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" C, C++
autocmd Filetype c setlocal sw=4 expandtab
autocmd Filetype cpp setlocal sw=4 expandtab

" Python
autocmd Filetype python setlocal sw=4 expandtab textwidth=79

" For Latex files, only use a 2-space tab
autocmd FileType tex set tabstop=2 shiftwidth=2
autocmd FileType html,htm set tabstop=2 shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other                                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Changes for diff mode
if &diff
    " Spelling highlighting is really annoying in diff mode
    set nospell
    set norelativenumber
endif

" force use of proper navigation
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

silent! source ~/.vim/add_conf.rc
