syntax enable
colorscheme darcula

" Tab and spacing options

set ts=2
set sw=2
set sts=2

" C++ Compile options

nnoremap <F4> :make!<cr>

nnoremap <F5> :!./a.out<cr>

" Start Vundle things

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on  

" End Vundle things.

set rnu
let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': ['rust-analyzer'],
\     'filetypes': ['rust'],
\     'project_root_files': ['Cargo.toml']
\   }
\ ]
