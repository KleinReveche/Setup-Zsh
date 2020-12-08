#!/bin/bash

sudo apt update & sudo apt upgrade -y
sudo apt install zsh wget -y
sh -c "$(wget -O- https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/oh-my-zsh-installer.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm .zshrc

wget https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.p10k.zsh
if (( $EUID != 0 )); then
wget https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.zshrc
    exit
fi
wget -O .zshrc https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/root.zshrc