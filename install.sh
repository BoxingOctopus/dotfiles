#!/bin/bash

echo "Creating symlinks for ZSH..."
links=(".zshrc", ".zshrc.d")

for link in "${links[@]}"; do
  if [ -e ~/$link ]; then
    echo "~/$link already exists. Skipping..."
  else
    ln -s $PWD/.dotfiles/$link ~/$link
  fi

echo "Changing Shell to ZSH..."
chsh -s /bin/zsh

echo "Activating New Environment..."
/bin/zsh