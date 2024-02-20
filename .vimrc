execute pathogen#infect()

syntax on
filetype plugin indent on

" Desactive un pop up Vim jedi qui affiche des informations sur les fonctions 
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

set scrolloff=8

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Raccourci pour ouvrir/fermer NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Changer de fenêtre avec Ctrl + Flèche directionnelle
nnoremap <silent>  <C-Left> :wincmd h<CR>
nnoremap <silent>  <C-Right> :wincmd l<CR>
nnoremap <silent>  <C-Up> :wincmd k<CR>
nnoremap <silent>  <C-Down> :wincmd j<CR>

" Redimensionner les fenêtres avec Ctrl + Shift + Flèches directionnelles
nnoremap <silent>  <C-S-Up>    :resize +2<CR>
nnoremap <silent>  <C-S-Down>  :resize -2<CR>
nnoremap <silent>  <C-S-Left>  :vertical resize +2<CR>
nnoremap <silent>  <C-S-Right> :vertical resize -2<CR>

" Set redo on Shift + U
nnoremap <silent> <S-u> <C-r>

" Active ou désactive les suggestions de Copilot
let g:copilot_enabled = 0 

" Raccourci pour activer/désactiver Copilot
nnoremap <C-c> :call ToggleCopilot()<CR>

function! ToggleCopilot()
    if g:copilot_enabled == 1
        let g:copilot_enabled = 0
        echo "Copilot désactivé"
    else
        let g:copilot_enabled = 1
        echo "Copilot activé"
    endif
endfunction

