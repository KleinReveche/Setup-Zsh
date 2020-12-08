#!/bin/bash

sh -c "$(wget -O- https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/oh-my-zsh-installer.sh)" > /dev/null
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k > /dev/null
rm ~/.zshrc

wget -O ~/.p10k.zsh https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.p10k.zsh -o /dev/null
if (( $EUID != 0 )); then
wget -O ~/.zshrc https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/.zshrc -o /dev/null
    exit
fi
wget -O ~/.zshrc https://raw.githubusercontent.com/KleinReveche/Setup-Zsh/main/root.zshrc -o /dev/null
source ~/p10k.zsh
echo 'ZSH Setup Done!'