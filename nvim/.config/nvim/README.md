## Neovim Windows

Toda la explicación se encuentra en el canal de youtube. [Joaquin Varela ](https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A)

Hay varios videos con explicaciones de instalacion y configuracion.

Requisitos para instalar en Linux Ubuntu / Debian:

Se tomo como guia para instalar Vim-Plug este enlace:
https://www.chrisatmachine.com/Neovim/01-vim-plug/

# Installing Neovim

sudo apt install neovim

# Create config

Make directory for your Neovim config

mkdir ~/.config/nvim

Create an init.vim file

touch ~/.config/nvim/init.vim

# Install vim-plug

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


