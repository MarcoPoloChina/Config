set  nocompatible              " be iMproved, required
filetype off                  " required

" seDTree	runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, requireDTree Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/syntastic'
Plugin 'msanders/snipmate.vim'
Plugin 'AutoClose'
Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub rep
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9' " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 256-color terminal


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd VimEnter,BufNewFile,BufReadPost * silent! 
""autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

set t_Co=256
syntax enable
syntax on
set autoindent
set cindent
set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set clipboard=unnamedplus

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap ii  <ESC> ea
nmap	<TAB> i <TAB>
nmap ` :tabp <CR>
nmap <Tab> :tabn <CR>
nmap <C-f> :FufFile <CR>
noremap  <Up> ""
 noremap! <Up> <Esc>
 noremap  <Down> ""
 noremap! <Down> <Esc>
 noremap  <Left> ""
 noremap! <Left> <Esc>
 noremap  <Right> ""
 noremap! <Right> <Esc>
" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
inoremap jj <Esc> 
inoremap aa <Esc> A
func Backspace()
  if col('.') == 1
    if line('.')  != 1
      return  "\<ESC>kA\<Del>"
    else
      return ""
    endif
  else
    return "\<Left>\<Del>"
  endif
endfunc
set backspace=indent,eol,start
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <TAB> :bnext<CR>

" Move to the previous buffer
nmap <S-TAB> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
