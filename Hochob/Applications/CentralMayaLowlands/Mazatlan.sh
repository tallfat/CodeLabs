#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MAZATLAN_PID=$$
export MAZATLAN_PATH=$(readlink -f "$0")
export MAZATLAN_DIRECTORY=$(dirname "$MAZATLAN_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="Triki"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="pico2wave"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/MazatlanEnglish.mp3"
else
    StreamAudio.sh "$LOCAL_DEVICE" "$LOCAL_VOLUME" "$AREA_CENTRAL_MAYA_LOWLANDS/Mazatlan.mp3"
fi

# End of File
