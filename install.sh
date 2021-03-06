#!/bin/bash

echo "Creating symlinks for ZSH..."
links=(".zshrc" ".zshrc.d")

for link in "${links[@]}"; do
  if [ -e ~/$link ]; then
    echo "~/$link already exists. Skipping..."
  else
    ln -s $PWD/.dotfiles/$link ~/$link
  fi
done

echo "Changing Shell to ZSH..."
if [ "$SHELL" != "/bin/zsh" ]; then
  chsh -s /bin/zsh
else
  echo "ZSH is already the default shell. Skipping..."
fi

read -p "Would you like to install Oh My VIM? (y/n) " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing Oh My VIM..."
  if [ -d ~/.oh-my-vim ]; then
    echo "Oh My VIM already installed. Skipping..."
  else
    curl -L https://raw.github.com/liangxianzhe/oh-my-vim/master/tools/install.sh | sh
  fi
  echo "Oh My VIM Pre-Install Complete! Run Vim for the first time to complete installation."
fi

read -p "Would you like to install Powerlevel10k? (y/n) " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo "Installing Powerlevel10k..."
  if [ ! "$USE_POWERLEVEL10K" ]; then
    echo "export USE_POWERLEVEL10K=1" >> ~/.zshrc.d/env_vars.zsh
  else
    echo "Powerlevel10k already installed. Skipping..."
  fi
fi

echo "Activating New Environment..."
/bin/zsh