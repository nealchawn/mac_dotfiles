" for coffee-script plugin
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
" call vundle#rc()
call vundle#begin()

" let Vundle manage Vundle
" required! 
" Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'

" My Plugins here:
" original repos on github
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'yskarpathiotis/solaryan'
Plugin 'scrooloose/nerdtree'
" Plugin 'mattn/emmet-vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'skammer/vim-css-color'
call vundle#end()

" set visual bell (instead of audio bell)
set vb

" enable light transparancy
" and default font
if has("gui_running")
  set transparency=15
  set guifont=Monaco:h13
endif

" turn on line numbers
set number

" no line wrapping
" set nowrap

" show invisible characters
set list

" allow files to be hidden without saving
set hidden

" turn off toolbar in gui vim
set guioptions=t

" new split windows should be on the right or bottom
set splitright
set splitbelow

" set tab options
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" set list options
set listchars="" 
set listchars=tab:\ \ 
set listchars+=trail:.
set listchars+=extends:>

" reselect after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" set backup and swap options
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//

" function key mappings
set pastetoggle=<F2>

" set the shortcuts for same directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" show status line
set laststatus=2

" misc mappings
map <Leader>ra :%s/
nmap <Leader>vi :source ~/.vimrc<cr>:PluginInstall<cr>
" map <Leader>gs :Gstatus<CR>

" setup auto indent
filetype plugin indent on
syntax enable

" solaryan options 
syntax on
let g:solarized_termtrans=1

set t_Co=256
let g:solarized_termcolors=256

" enable color mode depending on if gui or in term

set background=dark
colorscheme solaryan

set nocompatible
set backspace=2

" set, incremental searches will be done. The Vim editor will start searching
" when you type the first character of the search string. As you type in more
" characters, the search is refined.
set incsearch

" any search highlights the string matched by the search.
set hlsearch
" :nohlsearch clears the highlighted search results
map <leader><space> :nohlsearch<cr>

" shortcut to source current file (for use on vimrc)
map <leader>so :so %

" disable sql search by leader
let g:ftplugin_sql_omni_key = '<Leader>sql'
