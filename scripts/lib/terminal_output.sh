#!/usr/bin/env bash

################################################################################
# terminal_output.sh v1.0
#
# Color terminal output for bash.
#
# Author:       Juan Irming

################################################################################
# Prints text in color. Color constants are defined inside function as opposed
# to globally since bash doesn't support exporting of arrays. This will be
# upgraded if a future version of bash introduces such support.
#
# Argument 1:   string      Text to echo.
# Argument 2:   string      (optional) Text foreground color.
# Argument 3:   string      (optional) Text background color.
#
# Return:       void
#
# Example:      cecho "OK" GREEN
# Example:      cecho "WARNING" YELLOW
# Example:      cecho "FAILED" WHITE RED

function cecho {
    declare -A FOREGROUND
    declare -A BACKGROUND

    FOREGROUND[DEFAULT]="\033[0m"
    FOREGROUND[BLACK]="\033[30m"
    FOREGROUND[RED]="\033[31m"
    FOREGROUND[GREEN]="\033[32m"
    FOREGROUND[YELLOW]="\033[33m"
    FOREGROUND[BLUE]="\033[34m"
    FOREGROUND[MAGENTA]="\033[35m"
    FOREGROUND[CYAN]="\033[36m"
    FOREGROUND[LIGHT_GRAY]="\033[37m"
    FOREGROUND[DARK_GRAY]="\033[90m"
    FOREGROUND[LIGHT_RED]="\033[91m"
    FOREGROUND[LIGHT_GREEN]="\033[92m"
    FOREGROUND[LIGHT_YELLOW]="\033[93m"
    FOREGROUND[LIGHT_BLUE]="\033[94m"
    FOREGROUND[LIGHT_MAGENTA]="\033[95m"
    FOREGROUND[LIGHT_CYAN]="\033[96m"
    FOREGROUND[WHITE]="\033[97m"

    BACKGROUND[DEFAULT]="\033[49m"
    BACKGROUND[BLACK]="\033[40m"
    BACKGROUND[RED]="\033[41m"
    BACKGROUND[GREEN]="\033[42m"
    BACKGROUND[YELLOW]="\033[43m"
    BACKGROUND[BLUE]="\033[44m"
    BACKGROUND[MAGENTA]="\033[45m"
    BACKGROUND[CYAN]="\033[46m"
    BACKGROUND[LIGHT_GRAY]="\033[47m"
    BACKGROUND[DARK_GRAY]="\033[100m"
    BACKGROUND[LIGHT_RED]="\033[101m"
    BACKGROUND[LIGHT_GREEN]="\033[102m"
    BACKGROUND[LIGHT_YELLOW]="\033[103m"
    BACKGROUND[LIGHT_BLUE]="\033[104m"
    BACKGROUND[LIGHT_MAGENTA]="\033[105m"
    BACKGROUND[LIGHT_CYAN]="\033[106m"
    BACKGROUND[WHITE]="\033[107m"

    if [ ! -z "$3" ]
    then
        printf "${FOREGROUND[$2]}${BACKGROUND[$3]}$1${FOREGROUND[DEFAULT]}${BACKGROUND[DEFAULT]}"
    elif [ ! -z "$2" ]
    then
        printf "${FOREGROUND[$2]}$1${FOREGROUND[DEFAULT]}"
    else
        printf "$1"
    fi
}

################################################################################
# Export function for use by calling scripts.

export -f cecho

