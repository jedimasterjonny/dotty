" Ansible managed

" Install plugged if it's missing
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Install plugins
call plug#begin('~/.nvim/plugged')
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
call plug#end()

" Powerline fonts on airline
if has('macunix')
	let g:airline_powerline_fonts = 0
else
	let g:airline_powerline_fonts = 1
endif

" FZF
if has('macunix')
	set rtp+=/opt/homebrew/opt/fzf
elseif has('unix')
	set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
endif
nnoremap <silent> <leader><space> :Files<CR>

" Sensible keys
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Text, tab and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change invisible chars
set listchars=eol:¬,tab:>.

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Relative line numbering
set number relativenumber

" Scroll before reaching the end of the page
set scrolloff=3

" Better searching
set ignorecase
set smartcase

" Keep search results in the center of the screen
nmap n nzz
nmap N Nzz

" Turn on syntax highlighting
syntax on

" Fiddle with the line number
highlight CursorLineNr cterm=bold
