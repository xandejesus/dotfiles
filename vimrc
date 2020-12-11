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
set number relativenumber
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch


autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++14 % -o %:r <bar> !./%:r<CR>

cnoremap WE w<bar>e 

nnoremap vv <C-v>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'mbbill/undotree'
"Plugin 'python-syntax'
"Plugin 'vim-template'
"Plugin 'numirias/semshi'
"Plugin 'Rigellute/shades-of-purple.vim'
"Plugin 'gruvbox-community/gruvbox'
call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1
"let g:shades_of_purple_airline = 1
"let g:airline_theme='shades_of_purple'
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_scope_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:python_highlight_all = 1

highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%81v', 100)
set colorcolumn=80
if (has("termguicolors"))
	 set termguicolors
 endif

colorscheme xcodedarkhc 
