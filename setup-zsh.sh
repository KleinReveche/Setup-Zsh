#!/bin/bash

sudo apt update & sudo apt upgrade -y
sudo apt install zsh wget -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wget https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.zshrc
wget https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.p10k.zsh
