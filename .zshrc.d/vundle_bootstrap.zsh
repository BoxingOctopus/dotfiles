if [ ! -d $HOME/.vim/bundle/Vundle.vim/ ]; then
  echo "Installing Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "Vundle already installed. You can delete $HOME/.zshrc.d/vundle_bootstrap.zsh to prevent this message from appearing again, or remove it from $HOME/.zshrc."
fi