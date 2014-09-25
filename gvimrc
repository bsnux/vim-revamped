colorscheme bsnux

"set guifont=Monaco:h14
set guifont=Menlo:h14

" keybindings
nnoremap <D-Left> :bprev<CR>
nnoremap <D-Right> :bnext<CR>
ino <C-g> <esc>

set transparency=0

" Go to normal mode after saving a buffer
iunmenu File.Save
imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
