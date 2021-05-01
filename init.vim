"Configuracion basica
  set number "Activa el numero de linea
  set mouse=a "Activa el mouse dentro del editor
  set numberwidth=1 "Este es el ancho de los numeros
  set clipboard=unnamedplus "Las siguientes dos lineas activan el portapapeles (copiar y pegar)
  syntax enable
  set laststatus =2 "Esto permite mostrar la barra de estado
  set showcmd "Muestra lo que se esta ejecutando en consola
  set ruler
  set encoding=utf-8 "Codificacion utf8 que activa las ñ y acentos
  set showmatch

"Esto configura la identacion
  set tabstop=2 "Una tabulacion vale 2 espacios
  set shiftwidth=2 "Cuando idento con shift y '>', usa 2 espacios
  set expandtab "Cuando precione tabulador se eXPande
  let g:identLine_char = '|' "Este es el caracter con el que se identa
  set cursorcolumn "Esto genera un color diferente en la columnas donde se encuentre
  set cursorline "Esto permite mostrar un color diferente en la linea que se encuntre

"Gestor de pligins, gestor actual:junegunn/vim-plug
  call plug#begin('~/.vim/plugged') "Esto manda a traer el gestor de pluggins instalado
  Plug 'morhetz/gruvbox' "Este es el tema que uso
  Plug 'easymotion/vim-easymotion' "EasyMotion, pluggin de movimiento
  Plug 'scrooloose/nerdtree' "Este pluggin nos permite ver diRectorios
  Plug 'christoomey/vim-tmux-navigator' "Este pluggin nos permite navegar entre ventanas dentro de la misma consola con Ctrl + H,J,K,L
  Plug 'neoclide/coc.nvim', {'branch': 'relase'} "Este Pliggin permite el auto-completado, recuerda instalar node.js
  Plug 'mattn/emmet-vim' "Este pluggin sive para el desrrollo web front-end(html y css) recuerda usar :CocInstall coc-emmet
  call plug#end() "Cierra la llamada al gestor de pluggins

"Configuraciones de pluggins recuerda usar :PlugInstall
  colorscheme gruvbox "Activa el tema instalado(Gruvbox)
  let g:gruvbox_contrast_dark = "hard" "Selecciona la paleta de colores del tema
  let mapleader="ñ" "Esta es la tecla lider, es una tecla que siempre reconocen los pluggins
  "Se invoca con la tecla lider y la letra s y busca los 3 caracteres que ingresemos
  nmap <leader>s <Plug>(easymotion-s3)
  "Se invoca con la tecla lider y la letra o
  nmap <leader>o :NERDTreeFind<CR>
  let NERDTreeQuitOnOpen=1 "Esto cierra el menu de directorios cuando abrimos un archivo
  let g:deoplete#enable_at_startup = 1 "Esto activa el auto completado en general
  let g:user_emmet_leader_key='ñ' "Esta es la tecla lider de emmet, pondre la misma de todos los pluggins
  let g:user_emmet_install_global = 0 "Estas dos lineas hacen que solo funcione en archivos html, css y php
  autocmd FileType html,css,php EmmetInstall

"Estas son las validaciones para compilar y ejecutar el código
  autocmd FileType cpp nmap <leader>c :! cd '%:p:h' && g++ '%:t' -o 'main' && ./'main'<CR>
  autocmd FileType py nmap <leader>c :! cd '%:p:h' && python3 '%:t' <CR>

"Mis atajos de teclado personalizados
  "Cambio la tecla de cambio de modo desde Escape a hh
  inoremap hh <Esc>
  "La tecla lider mas la w ingresa un :W y un enter con <CR>(Guarda el archivo)
  nmap <leader>w :w<CR>
  "La tecla lider mas la q ingresa un :q y un enter(Esto sirve para salir)
  nmap <leader>q :q<CR>
  "sube 10 lienas
  nmap <leader>k 10k
  "Baja 10 lineas
  nmap <leader>j 10j
