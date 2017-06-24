# COLORS FOR DIFFERENT FILE TYPES AND FOLDERS
eval "`/usr/local/bin/gdircolors -b /Users/Sebastian/.dircolors`"

# ALIASES
# USE THE GNU ls INSTEAD OF NATIVE OSX/BSD ls (installed via homebrew)
alias ls='gls --color=auto --group-directories-first'

alias ll='ls -lAhG'
alias la='ls -A'
alias l='ls -lhG'

alias grep='grep --color'

alias modules='cd ~/Dropbox/Uni/Warwick/Modules/'
alias diss='cd ~/Seafile/Uni/Warwick/Dissertation/'
alias light='echo -e "\033]50;SetProfile=Light\a" && export ITERM_PROFILE=Light && source ~/.bash_profile'
alias dark='echo -e "\033]50;SetProfile=Dark\a" && export ITERM_PROFILE=Dark && source ~/.bash_profile'

export PATH=/usr/local/bin:$PATH

# FOR CASTEP BINARIES
export PATH=/Users/Sebastian/Applications/CASTEP/bin/darwin_x86_64_gfortran6.1:$PATH

# PYTHON PATH FOR EXTRA LIBRARIES
#export PYTHONPATH=~/lib/python

# MAKE SURE MPICC USES GCC AND NOT CLANG
export OMPI_CC=gcc-6
export MPI_F90=gfortran


# ----------- Solarized Colors --------------- #
FG="\[\e[38;2;131;148;150m\]"
BG="\[\e[38;2;0;40;51m\]"
BLACK="\[\e[38;2;0;53;65m\]"
RED="\[\e[38;2;220;50;47m\]"
GREEN="\[\e[38;2;133;153;1m\]"
YELLOW="\[\e[38;2;181;137;1m\]"
BLUE="\[\e[38;2;38;139;210m\]"
MAGENTA="\[\e[38;2;211;54;130m\]"
CYAN="\[\e[38;2;42;161;152m\]"
WHITE="\[\e[38;2;238;232;213m\]"
LILA="\[\e[38;2;108;110;138m\]"
ORANGE="\[\e[38;2;203;75;22m\]"
RESET="\[\e[0m\]"

# -----------colored bash prompt------------- #
#export PS1="\[\e[00;37m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;34m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\][\W]\[\e[00;37m\]\\$ \[\e[0m\]"

if [ "$ITERM_PROFILE" == "Light" ]
then
    export PS1="${BG}\u@${BLUE}\h${BG}:${RESET}[\W]${BG}\$${RESET} "
elif [ "$ITERM_PROFILE" == "Dark" ]
then
    export PS1="${WHITE}\u@${BLUE}\h${WHITE}:${RESET}[\W]${WHITE}\$${RESET} "
fi

# FOR MASTERPASSWORD MPW:
export MP_FULLNAME="Sebastian Potthoff"
