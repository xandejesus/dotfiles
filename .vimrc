"
" /$$   /$$                           /$$                    /$$       
"| $$  / $$                          | $$                   | $/       
"|  $$/ $$/  /$$$$$$  /$$$$$$$   /$$$$$$$  /$$$$$$   /$$$$$$|_//$$$$$$$
" \  $$$$/  |____  $$| $$__  $$ /$$__  $$ /$$__  $$ /$$__  $$ /$$_____/
"  >$$  $$   /$$$$$$$| $$  \ $$| $$  | $$| $$$$$$$$| $$  \__/|  $$$$$$ 
" /$$/\  $$ /$$__  $$| $$  | $$| $$  | $$| $$_____/| $$       \____  $$
"| $$  \ $$|  $$$$$$$| $$  | $$|  $$$$$$$|  $$$$$$$| $$       /$$$$$$$/
"|__/  |__/ \_______/|__/  |__/ \_______/ \_______/|__/      |_______/ 
"                                                                      
"                                                                      
"                                                                      
" /$$    /$$ /$$$$$$ /$$      /$$ /$$$$$$$   /$$$$$$                   
"| $$   | $$|_  $$_/| $$$    /$$$| $$__  $$ /$$__  $$                  
"| $$   | $$  | $$  | $$$$  /$$$$| $$  \ $$| $$  \__/                  
"|  $$ / $$/  | $$  | $$ $$/$$ $$| $$$$$$$/| $$                        
" \  $$ $$/   | $$  | $$  $$$| $$| $$__  $$| $$                        
"  \  $$$/    | $$  | $$\  $ | $$| $$  \ $$| $$    $$                  
"   \  $/    /$$$$$$| $$ \/  | $$| $$  | $$|  $$$$$$/                  
"    \_/    |______/|__/     |__/|__/  |__/ \______/                   

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
filetype off

inoremap {<CR> {<CR>}<Up><Right><CR>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap jj <Esc>

syntax enable
syntax on

set nocompatible
set autoindent
set tabstop=4
set shiftwidth=4
set cindent
set nonumber
"set number relativenumber
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set textwidth=80
set wrap linebreak

call plug#begin('~/.vim-plugged')

Plug 'junegunn/goyo.vim'
Plug 'aperezdc/vim-template'
call plug#end()

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++14 % -o %:r <bar> !./%:r<CR>

cnoremap WE w<bar>e 

nnoremap vv <C-v>

highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)
set colorcolumn=80
if (has("termguicolors"))
	 set termguicolors
 endif

colorscheme xcodedarkhc
highlight NonText ctermfg=8
