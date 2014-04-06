syntax on
filetype off

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" set default clipboard to system
set clipboard=unnamed

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab
" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles Here
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'helino/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-cucumber'

" Usability Bundles
Bundle 'terryma/vim-multiple-cursors'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplete'

" required for Vundle
filetype plugin indent on

" use numbers to navigate document
set number

" softtabs, 2 space
set tabstop=2
set shiftwidth=2
set expandtab
set bs=2

nmap <CR> G

" Navigating panes
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Autocomplete html tags
imap ,/ </<C-X><C-O>

" fix the lag on some keybinding ie O
:set timeout timeoutlen=3000 ttimeoutlen=100

" Multiple cursors
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0

" Quoter
:map <Leader>" gewi"<Esc>ea"<Esc>
:map <Leader>' gewi'<Esc>ea'<Esc>
:map <Leader>/ daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" NeoComplete options

" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
