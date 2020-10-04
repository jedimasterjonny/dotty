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
Plug 'arcticicestudio/nord-vim'
call plug#end()

" FZF
so /usr/share/doc/fzf/examples/fzf.vim
nnoremap <silent> <leader><space> :Files<CR>

" Sensible keys
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Change invisible chars
set listchars=eol:¬,tab:>.

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

" Use the nord theme
colorscheme nord