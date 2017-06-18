#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MEXICO_PID=$$
export MEXICO_NAME="Mexico"
export MEXICO_PATH=$(readlink -f "$0")
export MEXICO_DIRECTORY=$(dirname "$MEXICO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MEXICO_PID $MEXICO_NAME

Fswebcam.sh 360
# find dirname -type f | shuf -n 5

kill -- -$(ps -o pgid=$MEXICO_PID | grep -o '[0-9]*')

# End of File