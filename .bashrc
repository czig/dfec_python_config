#enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"
    alias grep='grep --color=auto'
    alias fgrep='gfrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#alias definitions
#pull in other aliases from bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#make sure vim is default editor
export EDITOR=vim

#make sure vim has correct colors (this is done with options in git bash)
export TERM=xterm-256color

#activate the base conda environment (allows use of anaconda in Git Bash)
source /c/Users/Caleb.Ziegler/Anaconda3/Scripts/activate
