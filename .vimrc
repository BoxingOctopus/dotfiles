set nocompatible         " be iMproved, required
filetype off             " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', { 'rtp': 'vim/' }
Plugin 'ascenator/L9', { 'name': 'newL9' }
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline-segments'
Plugin 'sheerun/vim-polyglot'
Plugin 'valloric/YouCompleteMe'
Plugin 'SirVer/utilisnips'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'shougo/vimproc.vim'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set ts=3
set sw=3
set expandtab
set mouse=a
set nu
colorscheme gruvbox

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UtiliSnipsExpandTrigger = '<tab>'
let g:UtiliSnipsJumpForwardTrigger = '<c-b>'
let g:UtiliSnipsJumpBackwardTrigger = '<c-z>'

" If you want :UtiliSnipsEdit to split your window.
let g:UtiliSnipsEditSplit="vertical"

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

let g:nerdtree_tabs_open_on_console_startup = 1