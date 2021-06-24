# config-nvim
Esta es mi configuracion del editor de código Neovim

![Vista previa](https://github.com/Alejok0/config-nvim/blob/main/CapturaVistaPrevia.png?raw=true)
(Vista del resultado final)

Cada linea dentro del archivo `init.vim` esta marcada con una pequeña descripcion respecto a su funcionamiento, ademas incluyo un script en python donde se puede mover el archivo de configuracion de manera automatica, ademas, este archivo (y lo realmente importante) instala los complementos necesarios para el funcionamiento de la configuracion, dichos complementos estan descritos a lo largo de la ejecuion (y dentro) del script.

# install.py
Este script esta programado en python, sirve para instalar la configuracion de Neovim, instala el paquete plug-vim que a su vez este permite la instalacion de las extenciones como nerdtree o el autocompletado, hablando de este, es necesaria es la instalacion de "Node js" para el autocompletado, nobstante este mismo puede ser desactivado(borrandolo o comentandolo con unas comillas dobles al inicio de la linea) buscando dentro del archivo .vimrc la linea que contenga `Plug neoclide/coc.vim`.

Una vez ejecutado este script, se debe moverá el alrchivo init.vim a su carpeta ~/.config/nvim ,Esto ultimo puede variar dependiendo la vercion del editor que tenga, el archivo init.vim contiene la configuracion de Neovim como de los Pluggins, recordemos que este script solo instala el administrador de plggins mas no instala los pluggins

Ya que haya realizado todo lo anterior debera abrir el programa de Neovim y escribir `:PlugInstall` esto instalara los pluggins de la configuracion.

# init.vim para Windows
Este script tiene la configuracion de Neovim sin enbargo se deben de instalar complementos de forma manual como el vim-plug que es el gestor de pluggins que utilizo, en Windows me tope con el error de `git not found`, lo solucione con la ayuda del [siguiente post](https://stackoverflow.com/questions/34457806/cant-install-vim-plug) donde muestra que la solucion es tan simple como instalar [git en Windows](https://gitforwindows.org/), dejando de lado esto ultimo, tambien es necesario instalar Node.js de manera manual esto con la finalidad de poder usar el apartado de autocompletado ubicado en en `Plug 'neoclide/coc.nvim'`.
