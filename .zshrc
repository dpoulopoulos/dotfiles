# https://stackoverflow.com/questions/59058894/why-is-this-compdef-error-message-referring-to
autoload -Uz compinit
compinit

# Add node, npm, npx to PATH
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# Add Go binaries to PATH
export PATH="$(go env GOPATH)/bin:$PATH"

# Enable kubectl conpletions
source <(kubectl completion zsh)

# Source external aliases
[ -f "$HOME/.zshrc_aliases" ] && source "$HOME/.zshrc_aliases"

# Source external tools
[ -f "$HOME/.zshrc_tools" ] && source "$HOME/.zshrc_tools"

