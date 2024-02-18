execute pathogen#infect()

syntax on
filetype plugin indent on

let g:jedi#show_call_signatures = "2"

set number
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start

autocmd Filetype python set tabstop=8
autocmd Filetype python set shiftwidth=4
autocmd Filetype python set textwidth=79
autocmd Filetype python set softtabstop=4

colorscheme habamax 
set background=dark

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <C-n> :NERDTreeToggle<CR>

" Changer de fenêtre avec Ctrl + Flèche directionnelle
nnoremap <C-Left> :wincmd h<CR>
nnoremap <C-Right> :wincmd l<CR>
nnoremap <C-Up> :wincmd k<CR>
nnoremap <C-Down> :wincmd j<CR>



