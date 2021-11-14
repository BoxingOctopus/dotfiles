# Bundles from the default repo (robbyrussell's oh-my-zsh).

ohMyZshPlugins=(\
    git \
    pip \
    command-not-found \
    autocomplete \
    autoupdate-antigen \
    zsh-interactive-cd \
)

for plugin in $ohMyZshPlugins; do
    antigen bundle oh-my-zsh/$plugin
done

# Bundles from third-party repos.

nonStandardPlugins=(\
    aubreypwd/zsh-plugin-reload \
    zsh-users/zsh-syntax-highlighting \
    jgogstad/passwordless-history \
    unixorn/fzf-zsh-plugin \
)

for plugin in $nonStandardPlugins; do
    antigen bundle $plugin
done
