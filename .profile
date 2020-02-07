# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"

# Load ssh agent once per session
#Automatically start ssh-agent and load xebia key
#if [ $(ps ax | grep [s]sh-agent | wc -l) -gt 0 ] ; then
#    echo "ssh-agent is already running"
#else
#    eval $(ssh-agent -s)
#    if [ "$(ssh-add -l)" == "The agent has no identities." ] ; then
#        ssh-add ~/.ssh/id_rsa_xebia
#    fi

    # Don't leave extra agents around: kill it on exit. You may not want this part.
#    trap "ssh-agent -k" exit
#fi

# Load op signin once per session
#eval $(op signin my)

