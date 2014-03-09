" REQUIRED BEFORE USING THIS .vimrc:
"
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" go get github.com/nsf/gocode
"
" go get -v code.google.com/p/rog-go/exp/cmd/godef
" go install -v code.google.com/p/rog-go/exp/cmd/godef


" ======= BEGIN VUNDLE SECTION =======
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
" ...

Bundle 'kien/ctrlp.vim'
"Bundle 'jnwhiteh/vim-golang'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/syntastic'
Bundle 'uarun/vim-protobuf'
Bundle 'plasticboy/vim-markdown'

" Use <C-x><C-o> for autocompletion.
Bundle 'Blackrush/vim-gocode'

Bundle 'Townk/vim-autoclose'
Bundle 'dgryski/vim-godef'

"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
" ======= END VUNDLE SECTION =======

set whichwrap+=<,>,h,l,[,]
set hlsearch
set et sw=2 ts=2 sts=2
set expandtab
set autoindent
set makeprg=go\ build

highlight ExtraWhitespace ctermfg=15 ctermbg=4 guifg=#CF6A4C guibg=#420E09
match ExtraWhitespace /\s\+$\| \+\ze\t/

highlight clear SignColumn

" Auto-format Go files when saved.
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" Syntastic.
map <C-T> :SyntasticCheck
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }

let g:vim_markdown_folding_disabled=1

map <C-n> :NERDTreeToggle<CR>
