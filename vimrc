" Basic SETUP
set nocompatible
set number relativenumber
set nu rnu
set encoding=UTF-8

" enable syntax and plugins
syntax enable
filetype off
set guifont=Fira\ Code:h12

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
set wildmenu

" TAG JUMPING:
" Need to create the `tags` file
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
command! MakeTags !ctags -R .

" FILE BROWSING:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" OSX backspace fix
set backspace=indent,eol,start

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" no sounds from vim
let g:vim_typing_sound = 0

" NerdTree Shortcut F6
nmap <C-n> :NERDTreeToggle<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" ~~~~~~~ PLUG IN MANGER ~~~~~~~ 
call plug#begin('~/.vim/plugged')

" Vundle Manager Plugin (required)
Plug 'VundleVim/Vundle.vim'

" status/tabline for vim
Plug 'vim-airline/vim-airline'

"Vim autocomplete
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs' " Completes parenthesis and brackets
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

" Tree Explorer for vim
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'ryanoasis/vim-devicons'

" Provides support for writing LaTeX documents
"Plug 'lervag/vimtex'

" Code completion engine
"Plug 'valloric/youcompleteme' " Need to compile vim with python3

call plug#end()
" ~~~~~~~ PLUG IN MANGER ~~~~~~~ 

filetype plugin indent on


