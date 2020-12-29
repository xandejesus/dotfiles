# ~/.bashrc: executed by bash(1) for non-login shells. 
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) 
# for examples 
 
git_colorscheme() {
	test=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
	test=${test// /}
	master="(master)"
	main="(main)"
	if [ "$test" == "$master" ] || [ "$test" == "$main" ]
	then 
		a="91m"
	else
		a="92m"
	fi
	#somehow a ternary operator
	#r='\[\e[91m\]'
	#r='[\e['
	#r+="$a"
	#r+='\]'
	#r+="$test"
	#r+='\'
	echo "$a"	
	}
git_directory(){
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[95m\] [ \[\033[39m\]\u\[\033[96m\]@\[\033[95m\]\h\[\033[96;1m\] \w \[\033[95m\]]\[\033[39m\]\[\e[\$(git_colorscheme)\]\$(git_directory)\[\e[00m\]$ "
#export PS1="\[\033[95m\] [ \[\033[39m\]\u\[\033[96m\]@\[\033[95m\]\h\[\033[96;1m\] \w \[\033[95m\]]\[\033[39m\]\$ "

#export LS_COLORS='di=37:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;46:ow=30;43'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=37;43'
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=36:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=37;43'
export LS_OPTIONS='--color-auto'
#export LSCOLORS='gxfxcxdxbxegedabagacad'

#Linux vs Mac

alias ls='ls --color=auto -X -l'
#alias ls='ls -l -G'
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias tmux='tmux -2'
#alias tmux="TERM=screen-256color-bce tmux"
export TERM=screen-256color
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

export TERM="xterm-256color"
