# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Environment variables used in LilyPond project
export LILYPOND_GIT=~/lilypond-sources
export LILYPOND_BUILD_DIR=~/lilypond-build
export LILYPOND_WEB_MEDIA_GIT=~/lilypond-extra

# 'git cl': command to upload LilyPond patches to Rietveld code review tool
PATH="${PATH}:~/git-cl"
