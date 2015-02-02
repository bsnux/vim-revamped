"colorscheme darcula
colorscheme bsnux_darcula

"set guifont=Monaco:h13
"set guifont=Menlo:h13

" Powerline fonts https://github.com/powerline/fonts
"set guifont=Inconsolata\ for\ Powerline:h16
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14


"set guifont=Anonymous\ Pro\ for\ Powerline:h15
"set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
"set guifont=Inconsolat-dz\ for\ Powerline:h14
"set guifont=Inconsolata-g\ for\ Powerline:h14
"set guifont=Liberation\ Mono\ for\ Powerline:h14
"set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h14
"set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
"set guifont=Meslo\ LG\ L\ for\ Powerline:h14
"set guifont=Meslo\ LG\ M\ for\ Powerline:h14
"set guifont=Meslo\ LG\ S\ for\ Powerline:h14
"set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h14
"set guifont=Monofur\ for\ Powerline:h15
"set guifont=Source\ Code\ Pro\ for\ Powerline:h14
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h15

" keybindings
nnoremap <D-Left> :bprev<CR>
nnoremap <D-Right> :bnext<CR>
ino <C-g> <esc>

set transparency=0

" Go to normal mode after saving a buffer
iunmenu File.Save
imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>

" Selected region
hi Visual guibg=#787878 gui=none

" Toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
