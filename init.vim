call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'benekastah/neomake'
" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rodjek/vim-puppet'
Plug 'mortonfox/nerdtree-iterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'
Plug 'pearofducks/ansible-vim'
Plug 'evanmiller/nginx-vim-syntax'

" Add plugins to &runtimepath
call plug#end()

set nocompatible        " Don't sacrifice anything for Vi compatibility
filetype plugin on      " Load plugin settings for the detected filetype
filetype indent on      " Load indent settings for the detected filetype
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set timeoutlen=400      " Timeout between key command combos
set magic               " Set magic on, for regular expressions
colorscheme seoul256

nnoremap <Leader>y "*y
nnoremap <Leader>Y "*Y
vmap <Leader>y "*y

set number              " Show line numbers
set cursorline          " Cursor line indicator
set ruler               " Show cursor position
set nostartofline       " Don't jump to start of line when scrolling

set backupdir=~/.vimswp " Keep backup files in one location
set directory=~/.vimswp " Keep swap files in one location

" Plugin Config
" NERDTree Ignore filetypes
let NERDTreeIgnore=['\.rbc$', '\.pyc$', '\~$', '__pycache__']
nmap <Space>d :NERDTreeToggle<CR>
nmap <Space>D :NERDTreeFind<CR>
" NERDTree toggle
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>w 
" FZF
map <Leader>f :FZF<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme= 'badwolf'

set statusline+=%#warningmsg#
set statusline+=%*
set makeprg=python
set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufWritePost * Neomake

let g:neomake_python_enabled_makers = ['pylint']
