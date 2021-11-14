set nocompatible         " be iMproved, required
filetype off             " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Enable Vundle
Plugin 'VundleVim/Vundle.vim'

let pluginList = [
    "\ 'preservim/nerdtree',
    \ "scrooloose/syntastic",
    \ 'scrooloose/vim-fugitive',
    \ 'altercation/vim-colors-solarized',
    \ 'flazz/vim-colorschemes',
    \ 'morhetz/gruvbox',
    \ 'vim-airline/vim-airline',
    \ 'vim-airline/vim-airline-themes',
    \ 'sheerun/vim-polyglot',
    \ 'valloric/YouCompleteMe',
    \ 'SirVer/utilisnips',
    "\ 'jistr/vim-nerdtree-tabs',
    \ 'shougo/vimproc.vim'
\ ]

" Install Plugins
for i in pluginList
    echom "Installing Plugin: " + i
    PluginInstall i
endfor

" Activate Plugins
for i in pluginList
    Plugin i
endfor

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
let g:UtiliSnipsEditSplit = "vertical"

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

let g:nerdtree_tabs_open_on_console_startup = 1