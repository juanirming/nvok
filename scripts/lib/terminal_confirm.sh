#!/usr/bin/env bash

################################################################################
# terminal_confirm.sh v1.0
#
# Prints warning message and a '[y/N]' prompt, then waits for user response.
#
# Author:       Juan Irming
#
################################################################################
# Copyright 2015-2017 Juan Irming
#
# This file is part of nvok.
#
# nvok is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# nvok is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with nvok.  If not, see <http://www.gnu.org/licenses/>.

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

