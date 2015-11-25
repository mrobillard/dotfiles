#------------------------------------------------------------------------------
# Matthew Robillard
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# Source .bashrc
#------------------------------------------------------------------------------
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#------------------------------------------------------------------------------
# Colors
#------------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

#------------------------------------------------------------------------------
# Git Prompt
#------------------------------------------------------------------------------
source /usr/local/bin/git-completion.bash
source /usr/local/bin/git-prompt.sh

function git-dirty {
    st=$(git status 2>/dev/null | grep 'nothing to commit')

    if [[ $st != "nothing to commit, working directory clean" ]]
    then
        echo "**"
    fi
}


function prompt
{
local WHITE="\[\033[1;37m\]"
local GREEN="\[\033[0;32m\]"
local CYAN="\[\033[0;36m\]"
local CYAN_BOLD="\[\033[1;36m\]"
local GRAY="\[\033[0;37m\]"
local BLUE="\[\033[0;34m\]"
local RED="\033[0;31m\]"
export PS1="
< ${CYAN_BOLD}\t ${CYAN}\w${GREEN} "'$(__git_ps1 "(%s$(git-dirty))") '"${GRAY}%> "

}


