source $HOME/.config/nvim/default-configs/sensible.vim

" https://github.com/VundleVim/Vundle.vim
set nocompatible              " required
filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim (set the runtime path to include Vundle and initialize)
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" GUI Related
Plugin 'itchyny/lightline.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'andymass/vim-matchup'

" fzf
Plugin 'airblade/vim-rooter'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" Syntax checking generic
Plugin 'vim-syntastic/syntastic'

" Autocomplete
Plugin 'neoclide/coc.nvim'

" Rust
Plugin 'rust-lang/rust.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

" Rust formatting
let g:rustfmt_autosave = 1

filetype plugin indent on    " required
set autoindent
set encoding=utf-8

" :Files
let $FZF_DEFAULT_COMMAND="rg --files --hidden --ignore-case --iglob !.git"

" Permanent undo
set undodir=~/.vim/undodir
set undofile
set noswapfile
set nobackup

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set completeopt=menuone,menu,noinsert,noselect

set exrc
set updatetime=100
set noerrorbells
set hidden
set notermguicolors
set noshowmode
set scrolloff=8
set nowrap
set signcolumn=number
set cmdheight=2
set relativenumber
set nu

set ignorecase smartcase
set incsearch
set hlsearch

colorscheme default

highlight Normal guibg=none
highlight NonText guibg=none

highlight Normal ctermbg=none
highlight NonText ctermbg=none

source $HOME/.config/nvim/plugin-config/coc.vim