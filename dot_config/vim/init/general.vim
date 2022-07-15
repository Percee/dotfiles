if !has('nvim')
    set ttymouse=xterm2
endif
set mouse=a

set autoindent
filetype indent plugin on

" default file encoding and unicode
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb                     " vim will put a 'byte order mark' (
" or BOM for short) at the start of Unicode files
set fileformats=unix,mac,dos " recognize file formats

set backspace=indent,eol,start " make backspace work like most other apps

" Tabs and spaces: http://vimcasts.org/episodes/tabs-and-spaces/
" https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
" https://stackoverflow.com/a/21323445
if has("autocmd")
    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.


set modeline
set textwidth=80


set autochdir " cwd of vim follows that of opened file in current window

" options

" opening a new file when the current buffer has unsaved changes causes files " to be hidden instead of closed.
" The unsaved changes can still be accessed by typing :ls and then :b[N],
" where [N] is the number of a buffer
" see: http://usevim.com/2012/10/19/vim101-set-hidden/
set hidden         " can switch to other buffer without saving the current one first
set showcmd        " display incomplete commands
set history=50     " keep 50 lines of command line history

" set colorcolumn=80 " Color in column 80
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set cursorline     " find cursor faster.


" searching
set hlsearch   " highlight all search matches
set incsearch  " start searching when you type the first character of the search string
set ignorecase " searching is not case sensitive
set smartcase  " when 'ignorecase' and 'smartcase' are both on, if a
" pattern contains an uppercase letter, it is case sensitive,

" otherwise, it is not

set gdefault   " sub all matches in a line by default


"set binary        " makes Vim more suitable for editing binary files
" We don't set it because it disables tabexpand

set shell=/bin/sh " use sh as default shell

" programming
set cindent          " enables automatic indenting c-style
set cinoptions=l1,j1 " affects the way cindent reindents lines
set showmatch        " flashes matching brackets or parenthasis
set matchtime=3      " how long to flash brackets

" backups

set nobackup       " don't backup
set nowritebackup  " don't make backup before overwritting
set noswapfile     " fuck swapfiles
set directory=/tmp " dir for tmp files

" jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" info
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set numberwidth=5   " width of number column
set showmode        " shows vi mode in lower left
set cmdheight=1     " more room for error msgs
set scrolloff=4     " places a couple lines between the current line and the screen edge
set sidescrolloff=2 " places a couple lines between the current column and the screen edge
set laststatus=2    " status bar always visible
set ttyfast         " improve redrawing
set lazyredraw      " will not redraw the screen while running macros (goes faster)

if has('linebreak')
    try
        set breakindent             " visually indent wrapped lines
        let &showbreak='↳'

    catch /E518:/

        " Unknown option: breakindent
    endtry

endif


" menu compilation

set wildmenu                    " enhanced ed command completion
set wildignore+=*.~             " ignore compiled objects and backups
set wig+=*.o,*.obj,*.pyc

set wig+=.sass-cache,tmp
set wildmode=longest:full,list:full

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag

set statusline +=%1*\ \|%{&fo}\|        "display format-options
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

" Cursor changes between normal and insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
    au!
    autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END


" disable preview window
set completeopt-=preview

set nocompatible
syntax on
