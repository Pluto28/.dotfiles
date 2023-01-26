#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# file with prompt configuration
source $HOME/.prompt

# Set aliases
alias ls='ls --color=auto'

alias grep='grep --color=always'

complete -cf man which

# bin to nvim
alias vim='/usr/bin/nvim'

# ctrl-s will no longer freeze the terminal
stty erase "^?"

#
## Set some default variables
#
export EDITOR='/bin/nvim'

# Colors for LS. Hooray!
export LS_COLORS="$(vivid generate solarized-dark)"

# source vte.sh
#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#        source /etc/profile.d/vte.sh
#fi

# some basic variables for configuring user basic things

man() {
    local width=$(tput cols)
    [ -n "$MANWIDTH" ] && [ $width -gt $MANWIDTH ] && width=$MANWIDTH 
    export MANWIDTH=$width \

	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

# BEGIN SSH-AGENT
# END SSH-AGENT
