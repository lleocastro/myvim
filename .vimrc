set nobackup
set nowb
set noswapfile
set noerrorbells
set mouse=a
set ttymouse=xterm2
set so=999
set clipboard=unnamedplus
set wildmenu
set number
set linespace=12
set title
set titlestring=%F\ -\ vim
set noshowmode
set laststatus=2
set background=dark
set expandtab
set smarttab
set linebreak
set breakindent
set nostartofline
set shiftwidth=2
set tabstop=2
set expandtab
set smartcase
set hlsearch
set incsearch
set splitbelow
set splitright

syntax enable

filetype plugin indent on

au BufNewFile,BufRead *.fish set ft=fish

set backspace=indent,eol,start

map <C-o> :NERDTreeToggle<CR>

map <Leader> <Plug>(easymotion-prefix)

" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/lleocastro/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

highlight GitGutterAdd ctermfg=green ctermbg=NONE
highlight GitGutterChange ctermfg=yellow ctermbg=NONE
highlight GitGutterDelete ctermfg=red ctermbg=NONE
highlight GitGutterChangeDelete ctermfg=yellow ctermbg=NONE

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'fileformat', 'fileencoding']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'gitbranch#name'
  \     }
  \ }

let NERDTreeShowHidden = 1
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
