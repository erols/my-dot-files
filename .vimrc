set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
" add line numbers
" set relativenumber
highlight LineNr ctermfg=gray

set splitbelow
set splitright

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
execute pathogen#infect()
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" autocmd VimEnter * NERDTree /home/erols/projects/
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
" autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

autocmd BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

nmap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
map <silent> <C-n> :NERDTreeToggle<CR>
" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

set rtp+=~/.vim/after/syntax/robot.vim
set rtp+=~/.vim/ftdetect/robot.vim

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_python_binary_path = 'usr/bin/python'
let g:ycm_server_python_interpreter = '/usr/bin/python'

let python_highlight_all=1
syntax on

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
