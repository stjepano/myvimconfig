" Pathogen
execute pathogen#infect()


source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim


behave mswin


set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

syntax on 
filetype plugin indent on


" Mapleader
let mapleader = ','

if has('gui_running')
    set guifont=Consolas:h11

    " Hide unneccessary GUI stuff
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
endif
set background=dark
colorscheme solarized

set autoread
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ruler
set number
set backspace=eol,start,indent
set ignorecase
set smartcase
set hlsearch
set lazyredraw " no redraw while executing macros
set showmatch " show matching brackets
set noerrorbells
set visualbell
syntax enable
set encoding=utf8
set ai  " Auto indent
set si  " Smart indent
set laststatus=2

" Paste
set pastetoggle=<F2>

" SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" CtrlP
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
" map <F4> :CtrlP<CR>

" NERDTree
map <F4> :NERDTreeToggle<CR>

" Some mappings
map <leader>rr :source $VIM\_vimrc<CR>
map <leader>/  :set hlsearch!<CR>

noremap š ^
noremap đ $
noremap ž 0
noremap - :

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switchbuf behavious
try 
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Status line
" set statusline=%t       "tail of the filename
set statusline=%f
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=\ (filetype:\ %y)      "filetype
set statusline+=\ %c:     "cursor column
set statusline+=%l\ (%L\ Total)   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=%=
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
