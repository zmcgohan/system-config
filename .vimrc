" " " VUNDLE STUFF START " " "
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'keith/swift.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" " " VUNDLE STUFF END " " "

syntax enable
set incsearch
set number
set history=1000
set wildignore=*.swp,*.pyc,*.class
set nobackup
set noswapfile
set noerrorbells visualbell t_vb=
set tabstop=2 softtabstop=0 noexpandtab shiftwidth=2
" Set coloring of tabs
hi TabLineFill ctermbg=Grey ctermfg=Grey
hi TabLineSel ctermbg=Black ctermfg=White 
hi TabLine ctermbg=Grey ctermfg=Black cterm=NONE
" Set coloring of status line
hi StatusLine ctermbg=Black ctermfg=188
hi StatusLineNC ctermbg=Black ctermfg=Grey
" Set coloring of window border
hi VertSplit ctermbg=Black ctermfg=188

let mapleader=","
nnoremap - ,
let maplocalleader="\\"

" PERSONAL COMMANDS
nnoremap <Leader>s :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>tn :tabnew<CR>
nnoremap <Leader>tc :tabclose<CR>
nnoremap <Leader>rv :source $MYVIMRC<CR>
nnoremap <Leader>ev :tabnew $MYVIMRC<CR>
nnoremap <Leader>vs :vsplit<CR>
nnoremap <Leader>hs :split<CR>
" Tab movement
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" Remap escape
inoremap jk <Esc>
inoremap <Esc> <Nop>

autocmd FileType python map <Leader>c :w<CR>:! clear && python %:p<CR>
autocmd FileType javascript map <Leader>c :! clear && phantomjs %:p<CR>
autocmd FileType c map <Leader>c :! clear && gcc %:p -lcurses && ./a.out<CR>
autocmd FileType swift map <Leader>c :w<CR>:! clear && swift %:p<CR>
