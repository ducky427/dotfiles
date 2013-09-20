# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Customize to your needs...
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=Users/developer/bin:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/sbin:/Users/developer/bin:/usr/local/bin:/usr/local/smlnj-110.75/bin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

. /Users/developer/.pyenv/versions/2.7.5/bin/virtualenvwrapper.sh


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew mercurial python sublime osx pip raggarwal tmux vagrant django)

source $ZSH/oh-my-zsh.sh


fpath=(/usr/local/share/zsh-completions $fpath)

alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; brew cleanup"

alias neodb="cd ~/bin/neo4j/latest/"
alias mongodb="cd ~/bin/mongodb/latest/"
alias ipynotebook="ipython notebook --pylab=inline"

server() {
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}

alias update='sudo softwareupdate -i -a; brew update; brew upgrade; upgrade_oh_my_zsh; update_ext_repos.py; pip-review'

function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
    ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

#http://superuser.com/questions/306028/tmux-and-zsh-custom-prompt-bug-with-window-name
DISABLE_AUTO_TITLE=true


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
