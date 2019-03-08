export PATH=/usr/local/bin:$PATH

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

alias mux='tmuxinator'
alias mux_kill='tmux kill-session -a' # to close all other sessions
alias rusty="rustup run nightly-2016-08-01 ~/.cargo/bin/rusti" # rust repl

alias use-cpay='rvm use 2.4.3@cpay'
alias use-admin='rvm use 2.3.5@admin'
alias use-com='rvm use 2.5.0@compliance'

# source ~/.bash_completion/alacritty

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
