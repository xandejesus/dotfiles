set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'dracula/vim', { 'as': 'dracula' }
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tibabit/vim-templates'
Plugin 'roxma/ncm-clang'
Plugin 'ErichDonGubler/vim-sublime-monokai'
" plugin from http://vim-scripts.org/vim/scripts.html

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
" Plugins will be downloaded under the specified directory.
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
call plug#begin('~/.vim/plugged')
:set number
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
"Plug 'dracula/vim', { 'as': 'dracula' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
syntax on
colorscheme sublimemonokai
let java_comment_strings=1
let java_highlight_functions=1
let java_highlight_java_lang_ids=1
:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:set guifont=20
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set autoindent
" On pressing tab, insert 4 spaces
" set expandtab
" syntax on
set background=dark
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
hi Normal guibg=#ffffff guifg=#000000 ctermbg=black ctermfg=white
