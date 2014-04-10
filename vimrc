" Maintainer:t4ohi.Thanks for Doctor Janzhou.
" Index:
"   General
"   Colors and Fonts
"   Files and backups
"   Indent
"   Functions
"   Keymapping
"   Plugins 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General 
    call pathogen#infect()
    set nocompatible
    set pastetoggle=<F2>
    set clipboard=unnamed
    set history=1000                 " Number of history
    filetype plugin on               " Enable filetype plugins
    filetype indent on               " Automatically detect file types.

    set modeline                     " Enable modeline detection
    set autoread                     " Auto read when a file is changed
    "set spell                        " spell checking on
    set encoding=utf8                " Set utf8 as standard encoding
    set fileformat=unix              " Set unix as the default format
    set ffs=unix,dos,mac             " Use Unix as the standard file type
"    set autochdir                    " Automatically change working dir
    set noic
" General 

" User interface 
    set wildmenu                     " Turn on the WiLd menu
    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc,*.aux,*bbl,*blg,*.out,*synctex
    set ruler                        " Always show current position
    set number                       " Show line numbers
    set cmdheight=1                  " Height of the command bar
    set hid                          " A buffer becomes hidden when it is abandoned
    " Configure backspace so it acts as it should act
    set backspace=eol,start,indent
    set whichwrap+=<,>,h,l
    set ignorecase                   " Ignore case when searching
    set smartcase                    " When searching try to be smart 
    set hlsearch                     " Highlight search results
    set incsearch                    " Search like modern browsers
    set lazyredraw                   " Don't redraw while executing macros
    set magic                        " For regular expressions turn magic on
    set showmatch                    " Show matching brackets
    set mat=2                        " How many tenths of a second to blink when matching brackets
    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    if has("gui_running")
        set go=gmre
        set guitablabel=%M\ %t
    endif
    set laststatus=2                  " Always show the status line
    "set showtabline=2 " always show tabs in gvim, but not vim
    set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%04.8b]\ [HEX=\%04.4B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"User interface


" Colors and Fonts 
    syntax enable                   " Enable syntax highlighting
    colo ron
    set t_Co=256
"Colors and Fonts


" Files, backups and undo 
    " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile
"Files, backups and undo


" Tab and Indent 
    set expandtab                   " Use spaces instead of tabs
    set smarttab                    " Be smart when using tabs ;)
    set shiftwidth=4
    set tabstop=4
    " Linebreak on 500 characters
    set lbr
    set tw=500

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines
" Tab and Indent

" Functions
" Functions


" Keymapping
    "stop highlight display
    nmap <F4>  :nohl<CR>
    nmap <F8>  :tabp<CR> 
    nmap <F9>  :tabn<CR>
    nmap <F7>  g~iw
    nmap <F3>  :w<CR>
    imap () ()<left>
    imap {} {}<left>
    imap [] []<left>
    inoremap <C-h> <left>
    inoremap <C-l> <right>
    inoremap <C-j> <down>
    inoremap <C-k> <up>
" 

" plugins
""" cd ~/.vim/bundle
""" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
" plugins
