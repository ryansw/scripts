## RyanSW .bashrc ##

# Check if __git_ps1 is available
if command -v __git_ps1 &> /dev/null
then
    PS1_GIT="\[\033[36m\]\$(__git_ps1 ' (%s)')"
fi

# Assemble the preferred prompt
PS1="\n\[\033[32m\]\u@\h \[\033[33m\]\w${PS1_Code}${PS1_GIT}\[\033[0m\]\n$(echo -e '\u03bb') "

# Will add in other useful things here later
