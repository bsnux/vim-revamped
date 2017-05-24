" ====== Vundle initial conf

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
" Plugins list here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'craigemery/vim-autotag'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'gilsondev/vim-monokai'
Plugin 'edliaw/vim-python'
" Color schemes
Plugin 'jdkanani/vim-material-theme'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'morhetz/gruvbox'
Plugin 'w0ng/vim-hybrid'
Plugin 'gregsexton/Muon'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" ====== End Vundle initial conf

" ====== Personal conf 

set nu
syntax on
set encoding=utf-8
set noswapfile

set autoread

let python_highlight_all=1

set mouse=a

set colorcolumn=81

let mapleader = ','

" set background=dark
" colorscheme zenburn
" colorscheme solarized
colorscheme muon

let g:airline_theme='molokai'

set splitright

" `delete` key shoud delete a char
set backspace=2

" Accesing to system clipboard on Mac
set clipboard=unnamed

" Highlight current line
set cursorline

" set 256 colors
set t_Co=256


" Python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Web development indentation
au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable folding and using `space` key for it
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR><Paste>

" Emacs keybiding for insert mode
imap <C-e> <esc>$a
imap <C-a> <esc>0i
imap <C-b> <esc>hi
imap <C-f> <esc>lli

" Change cursor shape in different modes: OSX iTerm2:
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
" https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Highligthing searching
set hlsearch

" netrw - the Vim 8 directory browser
let g:netrw_liststyle = 3
"     open file in new vertical split
let g:netrw_browse_split = 2
let g:netrw_list_hide='.*\.swp$,.*\.pyc,*\~$,*\.swo$,*\.swp$,*\.git,.\git,*\.hg,*\.svn,*\.bzr,.\DStore,.\idea,.\build'
let g:netrw_winsize = 25
"     toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Smart window navigation
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

" Emacs keys for command line
cnoremap <C-A>		<Home>
cnoremap <C-B>		<Left>
cnoremap <C-D>		<Del>
cnoremap <C-E>		<End>
cnoremap <C-F>		<Right>

" Tabnew shortcut
ca tn tabnew

" Move to buffers
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

" Google yapf
function! YAPF() range
  let l:line_ranges = a:firstline . '-' . a:lastline
  let l:cmd = 'yapf --lines=' . l:line_ranges
  let l:formatted_text = system(l:cmd, join(getline(1, '$'), "\n") . "\n")
  execute '1,' . string(line('$')) . 'delete'
  call setline(1, split(l:formatted_text, "\n"))
  call cursor(a:firstline, 1)
endfunction

map <leader>y :call YAPF()<cr>

augroup filetypedetect
    au BufRead,BufNewFile dev-server setfiletype python
    au BufRead,BufNewFile app-server setfiletype python
augroup END

" ====== End personal conf 

" ====== Plugins conf 

let g:SimpylFold_docstring_preview=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" The default setting of 'laststatus' is for the statusline to not appear until
" a split is created. If you want it to appear all the time, you need
" following line
set laststatus=2

let g:UltiSnipsExpandTrigger="<c-space>"

" Ctrlpvim: Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ====== End Plugins conf 
