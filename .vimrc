if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'nvie/vim-flake8'
Plug 'jpalardy/vim-slime'
Plug 'jalvesaq/Nvim-R'
Plug 'jiangmiao/auto-pairs'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-scripts/scratch.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

filetype plugin indent on 
"solarized dark colorscheme options
syntax enable
set background=dark
colorscheme solarized
"set t_Co=16
" show line numbers
set nu
set autoindent
set smartindent
" highlight search
set hlsearch
" incremental search
set incsearch
" make search insensitive unlkess it contains at least one capital letter
set ignorecase
set smartcase
" this makes :find and tab completion look in all sub directories
set path+=**
" tab settings 
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
"better menu in command mode
set wildmenu
set wildmode=longest:full,full
let python_highlight_all=1
" had to add this otherwise it didnt work properly
"let g:jedi#force_py_version = 3
"let g:UltisnipsUsePythonVersion = 3
set encoding=utf-8
" F7 for flake8 syntax check
" \ and d to open documentation for python modules with jedi
"  <C + Space> for autocompletion options
" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=0  " open in same window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"set R path for Nvim-R
"system R path
"let R_path = '/usr/bin/'
let R_path = '~/miniconda3/envs/sc-tutorial2/bin/'
"let R_path = '~/miniconda3/envs/monocle3/bin/'
let R_assign_map = '<C-->'
" <C-\><C-n> to enter insert mode in R terminal
" <C-x><C-o> autocompletion in R
"make backspace behave properly in insert mode
set backspace=indent,eol,start

" enable historical undo
set undofile 

" help see cursor easier
set cursorline

" <C-c><C-c> to paste current paragraph into vimterminal pane
" change vim-slime target to vimterminal
let g:slime_target = "vimterminal"
let g:slime_python_ipython = 1
" use {{{<fold level>}}} to fold sections
set foldmethod=marker
" relative line numbers
set relativenumber
"unmap CTRL-W in insert mode to stop me deleting words 
imap <C-w> <Nop>
