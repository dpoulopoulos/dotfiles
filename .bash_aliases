alias ll='ls -alF'

alias python='python3'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias ll='ls -alF --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# nvim anytime
alias vim='nvim'
alias nv='nvim'

# GitHub Copilot CLI aliases
eval "$(gh copilot alias -- bash)"

alias pbcopy='xsel --input --clipboard'
alias pbpaste='xsel --output --clipboard'

alias bcat='batcat'

# thefuck alias
eval $(thefuck --alias)

# navigate to my second brain on WSL
alias bbw='cd ~/vault/zettelkasten'
