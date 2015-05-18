# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Environment variables used in LilyPond project
export LILYPOND_GIT=~/lilypond-sources
export LILYPOND_BUILD_DIR=~/lilypond-build
export LILYPOND_WEB_MEDIA_GIT=~/lilypond-extra

# Add 'git cl' (command for uploading patches to code review) to system PATH
PATH="${PATH}:~/bin/git-cl"


# GENERAL BASH SETTINGS (not LilyPond-specific)

# add "default settings" to some commands
alias ls='ls --color=auto --file-type --group-directories-first'
alias grep='grep --color=auto'
alias less='less --RAW-CONTROL-CHARS'  # will parse color codes

# common ls aliases
alias la='ls --all'
alias ll='ls -l --human-readable --all'


# enable shell autocompletion and make it case-insensitive
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
bind "set completion-ignore-case on"

# save lots of bash history
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# append to the history file, don't overwrite it
shopt -s histappend


# Define variables with color codes
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
RESET="\e[0m"

# $(__git_ps1) displays git repository status in the prompt, which is extremely handy.
# Read more: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="verbose git"

# Define shell prompt
# Using \[ and \] around color codes in prompt is necessary to prevent strange issues!
export PS1="\[${GREEN}\]\u@\h \[${CYAN}\]\w\[${RESET}\]\$(__git_ps1)\n\\$ "
