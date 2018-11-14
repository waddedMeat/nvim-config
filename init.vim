let g:ale_completion_enable = 1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'LargeFile'
Plugin 'XML-Folding'
Plugin 'othree/eregex.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'enricobacis/vim-airline-clock'
"Plugin 'csv.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

colorscheme skittles_berry

set number
"set background=dark
set mouse=a
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap
set noerrorbells visualbell t_vb=
"set autochdir
set hlsearch
set splitbelow
set splitright

" change the <Leader> key becuase I was not a fan of '\'
let mapleader = ","

noremap <C-h> :bp!<CR>
noremap <C-l> :bn!<CR>
noremap <Leader>w :bd!<CR>

"set tags=tags;
" Make my backspace key work
"set backspace=indent,eol,start

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1


" Ctrl-Space for completions. Heck Yeah!
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
" and make it NOT open up a buffer
set completeopt=menu

" powerline font for gvim name:size (I had to use the GUI to find the name)
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14

set noswapfile
set clipboard=unnamed

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3

