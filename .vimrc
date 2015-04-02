syntax on

colorscheme Tomorrow-Night-Eighties

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Remove trailing whitespace on save
function! Preserve(command)
    " Save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
" Execute clear whitespace on save
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" set default clipboard to system
set clipboard=unnamed

" paste nicely from system clipboard on insert mode with cmd+v
inoremap <D-v> <Esc>:set paste<CR>"*p:set nopaste<CR>a

" make \"tab\" insert indents instead of tabs at the beginning of a line
set smarttab

" keep cursor off the edges
set scrolloff=4

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
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()

" required for Vundle
filetype plugin indent on
" END VUNDLE

" use numbers to navigate document
set number

" softtabs, 2 space
set tabstop=2
set shiftwidth=2
set expandtab
set bs=2

nmap <CR> G

" 80 Character ruler
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Navigating panes
nnoremap <C-j> <C-w>j
nnoremap <C-f> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

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

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$\|\.map$\|source_maps'
  \ }

" Copy/paste to system clipboard with Space + C/Space + P
vmap <Space>y "+y
vmap <Space>d "+d
nmap <Space>p "+p
nmap <Space>P "+P
vmap <Space>p "+p
vmap <Space>P "+P

" Go to start of line and visual mode (good for block commenting)
nmap <Space>/ 0<C-v>

" Resource vimrc
cmap src source ~/.vimrc
