syntax on

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" set default clipboard to system
set clipboard=unnamed

" paste nicely from system clipboard on insert mode with cmd+v
inoremap <D-v> ^O:set paste<CR>^R*^O:set nopaste<CR>

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" save swap and backup files in one place
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" disable auto commenting on new lines
set formatoptions-=cro

" START VUNDLE
" required!
filetype off
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Plugins Here
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'helino/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-cucumber'
Plugin 'digitaltoad/vim-jade'

" Usability Plugins
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" required for Vundle
filetype plugin on
" END VUNDLE

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

" Copy command
vmap <C-c> "*ygv

" fix the lag on some keybinding ie O
:set timeout timeoutlen=3000 ttimeoutlen=100

" Multiple cursors
" let g:multi_cursor_exit_from_insert_mode=0
" let g:multi_cursor_exit_from_visual_mode=0

" Quoter
:map <Leader>" gewi"<Esc>ea"<Esc>
:map <Leader>' gewi'<Esc>ea'<Esc>
:map <Leader>/ daW"=substitute(@@,"'\\\|\"","","g")<CR>P
