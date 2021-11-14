# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the bundles
source $HOME/.zshrc.d/antigen_plugins.zsh

# Load the theme.
antigen theme $ANTIGEN_THEME

# Tell Antigen that you're done.
antigen apply