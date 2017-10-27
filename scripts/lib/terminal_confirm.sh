#!/usr/bin/env bash

################################################################################
# terminal_confirm.sh v1.0
#
# Prints warning message and a '[y/N]' prompt, then waits for user response.
#
# Author:       Juan Irming

################################################################################
# Prints warning message and a '[y/N]' prompt, then waits for user response.
# Returns 0 (true) if user responded with a 'y'. Otherwise, returns 1 (false).
#
# Argument 1:   string      Warning message.
#
# Return:       integer     0 (true) or 1 (false)
#
# Example:      confirm 'Do you wish to proceed?'

function confirm {
    cecho "$1 [y/N] " RED

    read input

    if [ "$input" == 'y' ]
    then
        return 0
    fi

    return 1
}

################################################################################
# Prints warning message and a '[y/N]' prompt, then waits for user response.
# Continues if user responded with a 'y'. Otherwise, exits.
#
# Argument 1:   string      Warning message.
#
# Return:       void
#
# Example:      confirm 'Do you wish to proceed?'

function xconfirm {
    confirm "$1"

    if [ $? == 1 ]
    then
        echo 'Aborting'

        exit
    fi
}

################################################################################
# Export functions for use by calling scripts.

export -f confirm
export -f xconfirm
