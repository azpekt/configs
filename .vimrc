"list of plugins installed:
"https://github.com/tpope/vim-fugitive
"https://github.com/fatih/vim-go
"https://github.com/preservim/nerdtree

set number
filetype plugin indent on

"setting highlight on
syntax on

"few keys best practices reminders
nnoremap <Left>  :echoe "Use h, lazy ass!..."<CR>
nnoremap <Right> :echoe "Use l, lazy ass!..."<CR>
nnoremap <Up>    :echoe "Use k, lazy ass!..."<CR>
nnoremap <Down>  :echoe "Use j, lazy ass!..."<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h, lazy ass!..."<CR>
inoremap <Right> <ESC>:echoe "Use l, lazy ass!..."<CR>
inoremap <Up>    <ESC>:echoe "Use k, lazy ass!..."<CR>
inoremap <Down>  <ESC>:echoe "Use j, lazy ass!..."<CR>

" NerdTree on/off toggle
nnoremap <C-g> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" use OSX system clipboard to copy from VIM select mode
set clipboard=unnamed
set paste

