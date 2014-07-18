" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Optimize for fast terminal connections
set ttyfast
" Make sure vim history works
set viminfo+=!
 " Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable syntax highlighting
syntax on
" Make tabs as wide as four spaces
set tabstop=4
" Enable line numbers
set number
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Enable functions to be folded from the beginning
set foldmethod=indent
set foldnestmax=1
set foldlevel=0
" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
" noremap <leader>W :w !sudo tee % > /dev/null<CR>
" Automatic commands
if has("autocmd")
        " Enable file type detection
        filetype on
        " Treat .json files as .js
        autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif
" Fix Syntastic to work with Android
" let g:syntastic_java_javac_classpath = '/
" Ctrlp shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ctrlp directory search settings
let g:ctrlp_working_path_mode = 'rw'
" Let NERDTree display hidden folders
let NERDTreeShowHidden = 1
" Point to powerline
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim/
" Set 256 colors to true
set t_Co=256
" Fancy symbols for powerline
let g:Powerline_symbols = "fancy"
" Pathogen
execute pathogen#infect('bundle/{}', '~/.vim/colors/{}')
" Auto read updated fiels
set autoread
" Set colorscheme
colorscheme jellybeans
