set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/brookhong/cscope.vim.git'
Plugin 'chazy/cscope_maps'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'taglist.vim'
Plugin 'will133/vim-dirdiff'
Plugin 'majutsushi/tagbar'
Plugin 'greggerz/nerdtree-svn-plugin'
"Plugin 'tpope/vim-fugitive'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
highlight ExtraWhitespace ctermbg=Brown guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

execute "set <A-j>=\ej"
execute "set <A-k>=\ek"

:nnoremap <Leader>wn :match ExtraWhitespace /\s\+$/
:nnoremap <Leader>wf :match
:nnoremap <F2> :NERDTreeToggle<CR>
:nnoremap <F3> :TagbarToggle<CR>
:nnoremap <A-j> jzz
:nnoremap <A-k> kzz

colo koehler
syntax on

au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

let g:ycm_use_clangd = 0
"let g:ycm_filetype_whitelist = {'*': 1}
"let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf = '~/env/.ycm_extra_conf.py'

let g:ycm_filter_diagnostics = {
    \ "c": {
    \       "regex": [ 
    \                   ".*Endian not defined.*", 
    \                   ".*not configured for target.*",
    \                   ".*unknown type name 'ino_t'.*"
    \       ]
    \   }
    \ }


"let python_highlight_all=1
"syntax on

"set laststatus=2
"set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P

" enable recursive (toward parent) search of tags file
set tags=tags;
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
set cspc=3

set tabstop=4 shiftwidth=4 expandtab

highlight OverLength ctermbg=Brown ctermfg=white guibg=#592929
"au BufNewFile,BufRead *.cpp match OverLength /\%81v.\+/

let Tlist_Use_Right_Window = 1
let g:NERDTreeShowIgnoredStatus = 1

