syntax on
:set belloff=all
:set number 
:set background=dark
:set t_Co=256
:set splitright

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

:set noswapfile
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autochdir
:set formatoptions-=cro

let g:netrw_winsize = 20 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1

autocmd FileType netrw set nolist
":set paste
augroup ProjectDrawer
      autocmd!
      autocmd VimEnter * :Vexplore
augroup END

call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
"    Plug 'doums/darcula'
call plug#end()

colorscheme turbocpp  
