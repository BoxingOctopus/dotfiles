# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
source $HOME/.zshrc.d/antigen_config.zsh

# Make macOS keyboard shortcuts work
source $HOME/.zshrc.d/macos_keybindings.zsh

# Bootstrap Oh My Vim
source $HOME/.zshrc.d/ohmyvim_bootstrap.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh