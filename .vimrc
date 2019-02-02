
" Setup Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'dkasak/gruvbox'
	Plug 'w0rp/ale'
	Plug 'udalov/kotlin-vim'
	Plug 'rust-lang/rust.vim'
	Plug 'vim-syntastic/syntastic'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

let g:deoplete#enable_at_startup = 1

" Fix Kitty Background Bug
let &t_ut=''

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Custom stuff
set wildmenu
set hidden
set incsearch
set backspace=indent,eol,start

" by default, the indent is 4 spaces. 
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nowrap

" Theme
colo gruvbox
set background=dark

" Toggle hybrid line numbers with \l
map <leader>l :setlocal number! relativenumber!<cr>
" Open vimrc with \e
map <leader>e :e  $MYVIMRC<cr>
"Source vimrc with \s
map <leader>s :w<cr> :so $MYVIMRC<cr>
" Run currently open python file with \p
map <leader>p :w<cr> :! python %<cr>
" Return to previous buffer
map <leader>b :bp<cr>
" Windowing
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" == ALE ==
let g:ale_enabled = 1
nnoremap <leader>o :ALEToggle<CR>

" fzf for vim
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf


set noswapfile
tnoremap <ESC> <C-\><C-n>
