syntax on
set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab " Use tabs by default
set showmatch
set ignorecase
set vb t_vb=
set ruler
set incsearch
"set clipboard+=unnamed
nmap <C-N><C-N> : set invnumber <CR>
let mapleader = ","
filetype plugin on
filetype indent on
set ic
colorscheme desert
" Fix syntax highlighting synchronization
autocmd BufEnter * :syntax sync fromstart
" If the above gives bad performance (since it parses from beginning of file
" all the time), use this:
"autocmd BufEnter * :syntax sync minlines=200
let g:pydiction_location = $HOME.'/src/pydiction-1.2/complete-dict'
" ------------------------------------------------------
" |  Set key bindings & configure Vundle Bundle plugins |
" ------------------------------------------------------
let g:yankring_replace_n_pkey = '<c-k>'
let g:yankring_replace_n_nkey = '<c-j>'
" --------------------------------------------------
" |  Include fisa-vim-config meta-plugin + Bundles  |
" --------------------------------------------------
" fisa-vim-config for python configuration
" http://code.google.com/p/fisa-vim-config/
source ~/.vim/fisa-vim-config/.vimrc
" --------------------------------------------------
" |  Settings to override after the fact            |
" --------------------------------------------------
" JMC: Use default Ctrl-P for file fuzzy finder
let g:ctrlp_map = '<c-p>'
nmap <leader>z :CtrlPBookmarkDir<CR>
nmap <leader>a :CtrlPDir 


colorscheme desert
" Set tab settings for python
autocmd FileType py
  \ setlocal shiftwidth=4 |
  \ setlocal tabstop=4 |
  \ setlocal softtabstop=4
autocmd FileType sh
  \ setlocal shiftwidth=4 |
  \ setlocal tabstop=4 |
  \ setlocal noexpandtab
au BufNewFile,BufRead *.run set filetype=sh
" Syntax highlighting for json files
au BufRead,BufNewFile *.json set filetype=json
" ----------------------------------------------------
" |  Include extra bundles on top of fisa-vim-config  |
" ----------------------------------------------------

" Add the doc hammer!
Bundle 'matthias-guenther/hammer.vim.git'
" Hexman Hex editor plugin
Bundle 'vim-scripts/hexman.vim.git'
" Vim Ruby Debugger plugin
Bundle 'astashov/vim-ruby-debugger'
" AnsiEsc plugin (highlight and conceal ANSI Escape sequences)
Bundle 'vim-scripts/AnsiEsc.vim'
