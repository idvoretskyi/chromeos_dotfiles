# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
cd $HOME

# Ubuntu in Crouton accessibility aliases
alias ubuntu='sudo enter-chroot -n ubuntu'
alias xfce4='sudo startxfce4 -X xiwi -b -n ubuntu'

# Debian in Crouton accessibility aliases
alias debian='sudo enter-chroot -n debian'
alias xfce4='sudo startxfce4 -X xiwi -b -n debian'

# Some other aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
