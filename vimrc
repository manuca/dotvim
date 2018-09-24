let mapleader = ","

packadd! matchit

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" Ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Disable elm-vim default keybindings
let g:elm_setup_keybindings = 0

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'ajh17/Spacegray.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ruby-formatter/rufo-vim'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ElmCast/elm-vim'

" Initialize plugin system
call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Indententation options

filetype indent on

set nocompatible
set number
set autoindent
set smartindent
set tabstop=2     " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2
set expandtab     " tabs are spaces
set shiftround    " round > and < to multiples of shiftwidth

set autoindent
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set formatoptions=qrn1
set hidden
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set ruler
set scrolloff=3
set showcmd
set showmatch
set showmode
set textwidth=79
set ttyfast
set noundofile
set visualbell
set wildmenu
set wildmode=list:longest
set wrap

set list
set listchars=tab:▸\ ,eol:¬

" Case insenditive by defaul
set ignorecase
set smartcase

" Tab navigation mappings
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
nnoremap to :tabonly<CR>"

nnoremap ; :
vnoremap ; :
nnoremap <Leader>rc :e ~/.vimrc<CR>

" Window command mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window handling
nnoremap <leader>wo <C-w>v<C-w>l
nnoremap <leader>wc <C-w>c
"
" Use <tab> to jump to oposite bracket
" works with Matchit
nmap <tab> %
xmap <tab> %

nnoremap j gj
nnoremap k gk

nnoremap <leader><space> :noh<cr>
nnoremap <leader>v V`]

" Strip trailing white space from current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Hard wrap a paragraph
nnoremap <leader>q gqip

" NERDTree shortcuts
noremap <leader>nf :NERDTreeFind<CR>
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nb :NERDTreeFromBookmark

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable rufo (RUby FOrmat)
let g:rufo_auto_formatting = 1
noremap <leader>r :Rufo<CR>

" Tagbar bindings
noremap <leader>o :TagbarToggle<CR>

" FZF bindings
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>a :Ag<CR>
noremap <leader>t :Tags<CR>
noremap <leader>s :Snippets<CR>
noremap <leader>c :Commits<CR>

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

colorscheme spacegray
