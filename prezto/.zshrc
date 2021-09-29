#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# alias
alias ll="ls -lt"
alias la="ls -alt"
alias sss="source ~/.zshrc"

# M1 Mac brew
PATH="/opt/homebrew/bin:$PATH"

# Rust
CARGO_HOME="$HOME/.cargo"
PATH="$CARGO_HOME/bin:$PATH"

# Node.js
NVS_HOME="$HOME/.nvs"
. "$NVS_HOME/nvs.sh" install