inoremap jk <ESC>
nnoremap <SPACE> <Nop>
let mapleader=" "  " use space as mapleader

set pastetoggle=<F2>

" keybindings to make life easier
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Windows map
nnoremap <Leader>zh :wincmd h<CR>
nnoremap <Leader>zj :wincmd j<CR>
nnoremap <Leader>zk :wincmd k<CR>
nnoremap <Leader>zl :wincmd l<CR>
nnoremap <Leader>zs :wincmd s<CR>
nnoremap <Leader>zv :wincmd v<CR>
nnoremap <Leader>z> :wincmd ><CR>
nnoremap <Leader>z< :wincmd <<CR>
nnoremap <Leader>z+ :wincmd +<CR>
nnoremap <Leader>z- :wincmd -<CR>
nnoremap <Leader>z= :wincmd =<CR>
nnoremap <Leader>zmm :wincmd o<CR>
nnoremap <Leader>zd :wincmd q<CR>
nnoremap <Leader>zr :wincmd r<CR>

" Buffers map
set wildmenu wildcharm=<Tab>
nnoremap <Leader>bb :buffer <Tab>
nnoremap <Leader>bd :Bclose<CR>
nnoremap <Leader>bk :Bclose<CR>
"set wildchar=<Tab> wildmenu wildmode=full
"set wildcharm=<C-Z>
"nnoremap <F10> :b <C-Z>

" File map
nnoremap <Leader>fs :update<CR>
nnoremap <Leader>ff :vi <Tab>
nnoremap <Leader>. :vi <Tab>
nnoremap <Leader>fd :ed .<CR>

nnoremap <silent> <Leader>bd :Kwbd<CR>
