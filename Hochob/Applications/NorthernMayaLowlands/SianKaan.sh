#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export SIANKAAN_PID=$$
export SIANKAAN_NAME="Mapimi Application"
export SIANKAAN_PATH=$(readlink -f "$0")
export SIANKAAN_DIRECTORY=$(dirname "$SIANKAAN_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    SpeechSynthetizer.sh off espeak english \
    "To be written"
else
    SpeechSynthetizer.sh off espeak spanish \
    "Por escribirse, ${LOCAL_INSTITUTION}"
fi

Stream.sh "Eek'" "1.0" "$AREA_NORTHERN_MAYA_LOWLANDS/SianKaan.mp3" &

Amikoo.sh amikoo/headright 1
sleep .75
Amikoo.sh amikoo/headleft 1
sleep .75

#kill -- -$(ps -o pgid=$SIANKAAN_PID | grep -o '[0-9]*')

# End of File
