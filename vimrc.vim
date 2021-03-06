execute pathogen#infect()

" Swapfiles
set noswapfile
"
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = ","
set noautochdir 

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set tw=0
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark

try 
  "colorscheme jellybeans
  colorscheme solarized
catch
  colorscheme default
endtry

" Startify options
let g:startify_change_to_dir = 0

noremap <silent> <Leader>t :NERDTreeToggle<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap <leader>K :execute 'grep! --silent "\b"'.expand("<cword>").'"\b"'<CR>:rightb<SPACE>cw<CR>
 
" Syntastic {
"let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" Linter
"
let g:fixmyjs_rc_path = '/Users/Adriano/.eslintrc.js'

" Javascript
let g:syntastic_javascript_checkers = ['eslint']
"}

" RESIZES
nnoremap <leader>' :vertical resize +2 <cr>
nnoremap <leader>; :vertical resize -2 <cr>
nnoremap <leader>a :Gblame <cr>
nnoremap <leader>w :InteractiveWindow <cr>

set clipboard+=unnamed

" Fixing NerdTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" This makes gitgutter updating every 250ms
"let g:gitgutter_realtime = 1
"set updatetime=250

" This makes gitgutter update after saving file
" https://github.com/airblade/vim-gitgutter/issues/526
let g:gitgutter_realtime = 0
autocmd BufWritePost * GitGutter

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
