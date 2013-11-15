### Load modules ###

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Z
source `brew --prefix`/etc/profile.d/z.sh

# RVM & NVM are sourced in plugins

### Convenient stuff ###

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias nzbsync="cp ~/Downloads/*.nzb /Volumes/Data/Downloads/nzbs && rm ~/Downloads/*.nzb"

# Create a new directory and enter it
function md() {
    mkdir -p "$@" && cd "$@"
}

# Colorized cat
alias c='pygmentize -O style=monokai -f console256 -g'

### Python VirtualEnv ###
# TODO: python prezto plugin

export PIP_REQUIRE_VIRTUALENV=true # prevent accidentally calling pip without venv
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# global pip
function syspip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
# global pip3
function syspip3() {
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# virtualenvwrapper additions
alias mkve3='mkvirtualenv --no-site-packages --python=/usr/local/bin/python3'
alias mkve2='mkvirtualenv --no-site-packages --python=/usr/local/bin/python2'
alias mkve='mkve3'
alias rmve='rmvirtualenv'
alias lsve='lsvirtualenv -b'
alias py='python'
