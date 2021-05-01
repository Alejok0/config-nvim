import os
import sys

def carpetaInit():
    try:
        os.system("mkdir ~/.config/nvim")
    except:
        print("No se ha creado .config")
    
    try:
        os.system("mkdir ~/.config")
    except:
        print("No se ha crado nvim")

def moverArchivo():
    os.system("cp init.vim ~/.config/nvim")
    if(os.path.isfile('~/.config/nvim/init.vim')):
        return True
    else:
        return False

def instalarNode():
    try:
        os.system("sudo apt install nodejs")
    except:
        try:
            os.system("apt install nodejs")
        except:
            print("No a sido podible instalar nodejs")

if(sys.platform=="linux2"):
    os.system("clear")
else:
    os.system("cls")
    
print("\n"+"Tu sistema operativo es "+sys.platform)
print("Este script da por entendido que se esta uilizando Linux")
print(" ")
print("Creando la carpeta para init.vim . . .")
carpetaInit()

print("Moviendo init.vim . . .")
if(moverArchivo()):
    print("El archivo se movió correctamente")
else:
    print("El archivo NO se movió correctamente")

print("Instalando el gestor de Plugins . . .")
os.system("curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")

print("Instalando el plugin que muestra identacion . . .")
os.system("git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/vendor/start/indentLine")
os.system('vim -u NONE -c "helptags  ~/.vim/pack/vendor/start/indentLine/doc" -c "q"')

print("Para instalar el Plugin de auto completado es necesatio")
print(" instalar node.js para ello necesitamos acceso")
print("de super usuario")
os.system("sudo echo Permiso de super usuario consedido")
instalarNode()
