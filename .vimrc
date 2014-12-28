set nocompatible
syntax on

" getting pathogen onboard
execute pathogen#infect()

" fancy colors
colorscheme lucius
LuciusBlack
set background=dark

" use defaults write org.vim.MacVim MMCellWidthMultiplier 1.1, otherwise Terminus is looking bad
set gfn=TerminusBold:h14
set noantialias

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
 
set hlsearch
set incsearch
set showmatch
 
set number

filetype on
filetype plugin on

" starting ctags
" nnoremap <F8> :!/usr/local/bin/ctags -R --python-kinds=-i *.py<CR>
nmap <F8> :TagbarToggle<CR>

" omnicompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>

" variables for snipMate
let g:snips_email = "azpekt@gmail.com"
let g:snips_github = "https://github.com/azpekt"

" remap FuzzyFinder
nnoremap <C-f><C-f> :FufFile<CR>

" NerdTree
nnoremap <F3> :NERDTreeToggle<CR>

" execute python right from vim
nnoremap <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>
" nnoremap <buffer> <F9> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>

" trying to setup airline
"let g:airline_powerline_fonts = 1
set laststatus=2
