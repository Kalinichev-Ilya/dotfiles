export PATH=/usr/local/bin:$PATH

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

alias mux='tmuxinator'
alias mux_kill='tmux kill-session -a' # to close all other sessions
alias rusty="rustup run nightly-2016-08-01 ~/.cargo/bin/rusti" # rust repl

# source ~/.bash_completion/alacritty

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm"  ]] && . "$HOME/.rvm/scripts/rvm"
