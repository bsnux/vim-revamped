set gfn=Menlo\ for\ Powerline:h11.5

colorscheme material-theme
" colorscheme zenburn
" colorscheme solarized
" colorscheme monokai
"colorscheme bsnux_darcula

" keybindings
nnoremap <D-Left> :bprev<CR>
nnoremap <D-Right> :bnext<CR>
ino <C-g> <esc>

set transparency=0

" Go to normal mode after saving a buffer
iunmenu File.Save
imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>

" Toggle comments
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
