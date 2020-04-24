set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:clang_c_options = '-std=gnu11'
Plugin 'VundleVim/Vundle.vim'

" (*) Aqui agregamos las líneas <Plugin> para incorporar nuevos plugins a Vim

Plugin 'cocopon/iceberg.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'https://github.com/ycm-core/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'nlknguyen/copy-cut-paste.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'vim-pandoc/vim-pandoc'

call vundle#end() " required
filetype plugin indent on " required
