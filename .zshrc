#################
# ANTIGEN START #
#################

source /etc/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle autocomplete
antigen bundle autoupdate-antigen
antigen bundle zsh-interactive-cd

# Plugin Reload
antigen bundle aubreypwd/zsh-plugin-reload@1.0.0

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Keep Passwords/Secrets out of terminal history
antigen bundle jgogstad/passwordless-history

# Load the theme.
antigen theme bira

# Tell Antigen that you're done.
antigen apply

###############
# ANTIGEN END #
###############

# Set basic ZSH options
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
