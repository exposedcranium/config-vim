syntax on

set nocompatible
set encoding=utf-8
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set wildmenu
set incsearch
set ignorecase
set smartcase
set tags=./tags;
set foldmethod=syntax
set foldlevel=99
set nowrap

autocmd FileType c,cpp setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType asm setlocal shiftwidth=8 tabstop=8 noexpandtab
autocmd FileType ld setlocal shiftwidth=4 tabstop=4 expandtab

nnoremap <F5> :!make<CR>
nnoremap <F8> :copen<CR>
nnoremap <F9> :cnext<CR>
nnoremap <F7> :cprev<CR>
nnoremap <C-]> :tnext<CR>
nnoremap <C-[> :tprev<CR>
nnoremap <C-t> :tag<CR>
nnoremap <leader>i :normal! 0/* Header */<CR>/*===================*/<CR><Esc>
nnoremap <leader>t :term<CR>
nnoremap <C-j> 10j
nnoremap <C-k> 10k
nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>
if has("gui_running")
    nnoremap <C-Space> :NERDTreeToggle<CR>
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
call plug#end()

set mouse=a

if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
    if (has("termguicolors"))
        set termguicolors
    endif
endif

colorscheme gruvbox
