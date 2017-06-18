#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export MPG123_PID=$$
#export MPG123_BINARY=mpg123
export MPG123_BINARY=cvlc
export MPG123_ARGUMENTS=--play-and-exit

LOCAL_FILE="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $MPG123_BINARY $MPG123_ARGUMENTS $LOCAL_FILE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File