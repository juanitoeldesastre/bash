#!/bin/bash

if [ -x "$(command -v apt-get)" ]; then
    echo "Instalando sshpass en Kali/Parrot..."
    sudo apt-get update
    sudo apt-get install -y sshpass
elif [ -x "$(command -v pacman)" ]; then
    echo "Instalando sshpass en Arch..."
    sudo pacman -S --noconfirm sshpass
else
    echo "Error"
    exit 1
fi

echo ":)"

