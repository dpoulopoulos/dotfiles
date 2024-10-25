# https://stackoverflow.com/questions/59058894/why-is-this-compdef-error-message-referring-to
autoload -Uz compinit
compinit

alias nv="nvim"

export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

# Enable uv
. "$HOME/.cargo/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
