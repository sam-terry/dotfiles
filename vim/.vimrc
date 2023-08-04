filetype on
syntax on

# Easier to read comments
colorscheme default
set number!


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

# File explorer menu
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
	autocmd VimEnter * wincmd l
augroup END

# Remap <esc> to 'j' twice for convenience 
inoremap jj <esc>
