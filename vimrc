set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'Valloric/MatchTagAlways'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'Syntastic'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlp.vim'

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
" Put your non-Plugin stuff after this lineet nocompatible
"
"
" 1 tab to 2 space for ruby
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" number line show
set nu
set tw=100
set nowrap

colorscheme darkblue
" colorscheme murphy
" Press space to clear search highlighting and any message already displayed.
nnoremap ; :
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

"Syntastic Settings
let g:syntastic_aggregate_errors = 1
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_javascript_checkers = ['jshint', 'jscs']

"Delete whitespace
autocmd FileType ruby,javascript,html,css,yml autocmd BufWritePre <buffer> :%s/\s\+$//e

" Standard settings
set hlsearch

" CtrlP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_use_caching = 0
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.cache

" Ag settings
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
