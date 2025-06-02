#!/usr/bin/env bash

echo ""
echo "---- ZSH ----"
sudo pacman -S zsh

export RUNZSH=no
if  [[ -z $ZSH ]]; then 
  ZSH="${HOME}/.oh-my-zsh"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/mrx04programmer/ZshTheme-ArchCraft/ ${ZSH:-~/.oh-my-zsh}/themes/ZshTheme-ArchCraft
mv ${ZSH:-~/.oh-my-zsh}/themes/ZshTheme-ArchCraft/archcraft-dwm.zsh-theme ${ZSH:-~/.oh-my-zsh}/themes/
rm -rf ${ZSH:-~/.oh-my-zsh}/themes/ZshTheme-ArchCraft/


