call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()

set nocompatible        " Don't sacrifice anything for Vi compatibility
filetype plugin on      " Load plugin settings for the detected filetype
filetype indent on      " Load indent settings for the detected filetype
set timeoutlen=400      " Timeout between key command combos
set magic               " Set magic on, for regular expressions
colorscheme seoul256

nnoremap <D-y> "*y
nnoremap <D-Y> "*Y
vmap <D-y> "*y

set number              " Show line numbers
set cursorline          " Cursor line indicator
set ruler               " Show cursor position
set nostartofline       " Don't jump to start of line when scrolling

set backupdir=~/.vimswp " Keep backup files in one location
set directory=~/.vimswp " Keep swap files in one location


" Plugin Config
nmap <Space>d :NERDTreeToggle<CR>
nmap <Space>D :NERDTreeFind<CR>

" NERDTree Ignore filetypes
let NERDTreeIgnore=['\.rbc$', '\.pyc$', '\~$']
" NERDTree toggle
map <Leader>nt :NERDTreeToggle<CR>

