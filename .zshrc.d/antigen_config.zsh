# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the bundles
source $HOME/.zshrc.d/antigen_plugins.zsh

# Load the theme.
if [ $USE_POWERLEVEL10K = 1 ]; then
    antigen theme romkatv/powerlevel10k
else
    antigen theme $ANTIGEN_THEME
fi

# Tell Antigen that you're done.
antigen apply