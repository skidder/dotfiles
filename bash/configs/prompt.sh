case $TERM in
     xterm*|rxvt*)
         local TITLEBAR='\[\033]0;\u ${NEW_PWD}\007\]'
          ;;
     *)
         local TITLEBAR=""
          ;;
    esac

local UC=$COLOR_WHITE               # user's color
[ $UID -eq "0" ] && UC=$COLOR_RED   # root's color

# PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\$(vcprompt) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "
PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "
