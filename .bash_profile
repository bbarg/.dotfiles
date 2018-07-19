# prompt
source ~/.bash/git_prompt.sh

export PS1="[\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\] \[\e[33m\]\w\[\e[m\]]\[\e[35m\]\`parse_git_branch\`\[\e[m\] \[\e[1m\]\d\[\e[m\] \[\e[1m\]\t\[\e[m\]\n\$ "
export TERM=xterm-256color
export EDITOR='emacs'
export LANG=en_US.utf8

# environment
export PATH=$PATH:/usr/local/bin:~/local/bin

# ls
if [[ `uname` == 'Darwin' ]]; then
    ls_color='-G'
else
    ls_color='--color=auto'
fi
alias ls='ls -B $ls_color'
alias ll='ls -l'
alias la='/bin/ls -al $ls_color'

# make .bash_profile better
alias rb='. ~/.bash_profile'

# tmux
alias trw='tmux rename-window'

# color man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
export PAGER='less -SFX'

# Other Helpful Things
alias grep='grep --color=auto'
alias rm='rm -i'
alias epoch='date +%s'
alias urldecode='python -c "import sys, urllib as ul; \
    print ul.unquote_plus(sys.argv[1])"'

# git alias
alias gits='git status'
alias gpr='git pull --rebase origin master'
alias conflicts='$EDITOR `git status --porcelain | grep "UU" | tr -d "UU "`'

# compilers
alias use_clang='export CC="ccache clang"; export CXX="ccache clang++-3.6"'
alias use_gcc='export CC="ccache gcc"; export CXX="ccache g++"'

#
# Functions
#

function which_cc {
    echo $CC $CXX
}

function ff {
    find . -name "$1"
}

function includes {
    if [[ -z $1 ]]; then
	echo "Enter a term to search for!"
	return 1
    fi
    find /usr -name "include" | xargs ag $@
}

function errno {
    ERRNO_H=/usr/include/asm-generic/errno-base.h
    grep -e `$@` $ERRNO_H
}
