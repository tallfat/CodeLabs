#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export FFMPEG_PID=$$
export FFMPEG_BINARY=ffmpeg
export FFMPEG_INPUT=/dev/video0
export FFMPEG_ARGUMENTS="-segment_time 10 -codec:v libx264 -qp 0"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 0 ]
then
    ffmpeg -i $FFMPEG_INPUT $FFMPEG_CAMERA
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
