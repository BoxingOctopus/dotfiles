# Download and install Antigen if it is not already installed
if [ ! -d "$HOME/.antigen" ]; then
    mkdir -p "$HOME/.antigen"
    curl -L git.io/antigen > $HOME/.antigen/antigen.zsh
fi

# Bootstrap Antigen
source $HOME/.antigen/antigen.zsh

# Set basic ZSH options
source $HOME/.zshrc.d/basic_zsh_options.zsh

# Load Environment Variables
source $HOME/.zshrc.d/env_vars.zsh

# Load Aliases
source $HOME/.zshrc.d/aliases.zsh

# Bootstrap Antigen core config
source $HOME/.zshrc.d/antigen.zsh

# Make macOS keyboard shortcuts work
source $HOME/.zshrc.d/macos_keyboard_shortcuts.zsh

# Bootstrap FZF
source $HOME/.zshrc.d/fzf_bootstrap.zsh

# Bootstrap Vundle
source $HOME/.zshrc.d/vundle_bootstrap.zsh