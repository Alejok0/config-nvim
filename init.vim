" ====================
" Configuración básica
" ====================
set number                     " Activa el número de línea
set mouse=a                    " Activa el mouse dentro del editor
set numberwidth=1              " Ancho de los números
set clipboard=unnamedplus      " Usa el portapapeles para copiar/pegar
syntax enable                  " Habilita la sintaxis
set laststatus=2               " Muestra la barra de estado
set showcmd                    " Muestra comandos en la consola
set relativenumber             " Números relativos de líneas
set encoding=utf-8             " Codificación UTF-8
source $VIMRUNTIME/mswin.vim
set showmatch                  " Resalta coincidencias de paréntesis y llaves
set guifont=JetBrains_Mono_Medium:h13 " Fuente

" ====================
" Archivos temporales
" ====================
set backup
set swapfile
set backupdir=~/.vim/backup     " Directorio para archivos de respaldo
set directory=~/.vim/swapfiles  " Directorio para archivos swap
set undodir=~/.vim/undodir      " Directorio para historial de deshacer
set undofile                   " Habilita historial de deshacer

" ====================
" Configuración de indentación
" ====================
set tabstop=2                  " Tabulaciones de 2 espacios
set shiftwidth=2               " Shift-indentation de 2 espacios
set expandtab                  " Convierte tabs en espacios
set autoindent                 " Mantiene la indentación previa
set smartindent                " Auto-indentación inteligente
set cursorcolumn               " Resalta la columna actual
set cursorline                 " Resalta la línea actual

" ====================
" Mejoras visuales
" ====================
set bg=dark                    " Fondo oscuro
highlight LineNr ctermbg=black ctermfg=gray guibg=Gray guifg=White " Números de línea
highlight Error ctermbg=red ctermfg=white guibg=Red guifg=White    " Errores resaltados

" ====================
" Plugins (usando vim-plug)
" ====================
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto-completado LSP
Plug 'tbastos/vim-lua'
Plug 'morhetz/gruvbox'         " Tema Gruvbox
Plug 'easymotion/vim-easymotion' " Movimientos rápidos
Plug 'scrooloose/nerdtree'     " Explorador de archivos
Plug 'christoomey/vim-tmux-navigator' " Navegación entre ventanas
Plug 'mattn/emmet-vim'         " Desarrollo web
Plug 'Yggdroot/indentLine'     " Visualización de indentación
Plug 'vim-airline/vim-airline' " Barra de estado mejorada
Plug 'vimsence/vimsence'       " Estado de Vim en Discord
Plug 'jiangmiao/auto-pairs'    " Completa paréntesis y llaves
Plug 'tpope/vim-fugitive'      " Integración con Git
Plug '907th/vim-auto-save'     " Guardado automático
Plug 'tpope/vim-commentary'    " Comentar código fácilmente
Plug 'OmniSharp/omnisharp-vim' " Soporte para C# y Unity
call plug#end()

" ====================
" Configuraciones de plugins
" ====================
colorscheme gruvbox                     " Tema Gruvbox
let g:gruvbox_contrast_dark = "hard"    " Contraste fuerte
let mapleader=" "                       " Tecla líder
let g:indentLine_char = '|'              " Carácter para la indentación
nmap <leader>s <Plug>(easymotion-s3)     " Movimiento rápido
nmap <leader>o :NERDTreeFind<CR>         " Abrir NERDTree
let NERDTreeQuitOnOpen=1                 " Cerrar NERDTree al abrir archivo

" Coc.nvim extensiones
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-python',
  \ 'coc-lua',
  \ 'coc-clangd',
  \ 'coc-sh',
  \ 'coc-html',
  \ 'coc-css',
  \]

" Emmet configuración
let g:user_emmet_leader_key='ñ'
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

" Airline configuración
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" ====================
" Atajos personalizados
" ====================
inoremap hh <Esc>                " Salir del modo insertar con 'hh'
nmap <leader>w :w!<CR>            " Guardar archivo
nmap <leader>q :q<CR>            " Cerrar Vim
map <A-F> gg=G                   " Formatear código
inoremap <C-Space> <C-n>         " Autocompletado con Ctrl+Espacio
nmap <leader>l $                 " Fin de línea
nmap <leader>h ^                 " Inicio de línea
vnoremap < <gv                   " Mantener selección al indentar a la izquierda
vnoremap > >gv                   " Mantener selección al indentar a la derecha
xnoremap K :move '<-2<CR>gv-gv   " Mover bloques de código arriba
xnoremap J :move '>+1<CR>gv-gv   " Mover bloques de código abajo
nnoremap <silent> <TAB> :bnext<CR>   " Navegar entre buffers
nnoremap <silent> <S-TAB> :bprevious<CR> " Navegar entre buffers en reversa

" ====================
" Evitar abrir nuevos archivos en ventanas separadas
" ====================
set noea                        " No abrir archivos en ventanas adicionales

autocmd BufNewFile,BufRead *.script\|*.gui_script\|*.render_script\|*.editor_script\|*.lua_  setlocal filetype=lua
" Compilación de C y C++
autocmd FileType cpp nmap <leader>c :! cd '%:p:h' && g++ '%:t' -o '%:t.compiled'<CR>
autocmd FileType c nmap <leader>c :! cd '%:p:h' && cpp '%:t' -o '%:t.compiled'<CR>
autocmd FileType python nmap <leader>c :!py %<CR>




