# Bundles from the default repo (robbyrussell's oh-my-zsh).

plugins=(\
    git \
    pip \
    command-not-found \
    autocomplete \
    autoupdate-antigen \
    zsh-interactive-cd \
)

for plugin in $plugins; do
    antigen bundle oh-my-zsh/$plugin
done

# Plugin Reload
antigen bundle aubreypwd/zsh-plugin-reload@1.0.0

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Keep Passwords/Secrets out of terminal history
antigen bundle jgogstad/passwordless-history