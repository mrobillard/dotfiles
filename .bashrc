#---------------------------------------------------------------------------------------------------
# Matthew Robillard
#---------------------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------------------------------------

alias ll='ls -al'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~: Go Home
alias c='clear'                             # c: Clear terminal display
alias which='type -all'                     # which: Find executables
alias path='echo -e ${PATH//:/\\n}'         # path: Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty: Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic: Make tab-completion case-insensitive

#---------------------------------------------------------------------------------------------------
# Extract:  Extract most know archives with one command
#---------------------------------------------------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

#---------------------------------------------------------------------------------------------------
# Compress: Create a ZIP archive of a folder
#---------------------------------------------------------------------------------------------------
zipf () { zip -r "$1".zip "$1" ; }          

#---------------------------------------------------------------------------------------------------
# Trash: Move files to OX S trash
#---------------------------------------------------------------------------------------------------
trash () { command mv "$@" ~/.Trash ; }
