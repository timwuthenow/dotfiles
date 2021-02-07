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

# Code - Insiders is VS Code in the Insiders channel, for native M1 processor support.
# https://twitter.com/code/status/1338886895867224070?s=20
alias code="code-insiders"

# M1 Mac brew
export PATH="/opt/homebrew/bin:$PATH"