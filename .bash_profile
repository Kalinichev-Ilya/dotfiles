[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Default editor for all
export EDITOR='vim'

source /Users/ponch/.rvm/scripts/rvm

PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.rvm/gems/ruby-2.6.0/bin

# export GOPATH=/Users/ikzekly/go/
# PATH=$PATH:$GOPATH/bin

# RabbitMQ
export PATH=~/cpay-layout/src/rabbitmq_server-3.7.10/sbin:$PATH

export PATH="$PATH:/opt/yarn-v1.13.0/bin"
export PATH="$PATH:`yarn global bin`"
export PYTHONPATH="$HOME/code"

PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:$HOME/.rvm/gems/ruby-2.6.0/bin

# export GOPATH=/Users/ikzekly/go/
# PATH=$PATH:$GOPATH/bin

# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=$PATH:$HOME/usr/local/bin:$PATH
PATH=$PATH:$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# source: (master)>
PS1="\[$(tput setaf 130)\]\W\[$(tput sgr0)\]"; # directory
PS1+="\[$(tput setaf 196)\]:"; # semicolon
PS1+="\[$(tput setaf 202)\]\$(parse_git_branch)"; # git branch name
PS1+="\[$(tput setaf 245)\]> "; # arrow
export PS1;

# TODO http://blog.deadlypenguin.com/blog/2013/10/24/adding-git-status-to-bash/
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

# add aliases
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.poetry/bin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

# export PATH="$HOME/.cargo/bin:$PATH"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

