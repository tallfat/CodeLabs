#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export MECCANOID_PID=$$
export MECCANOID_NAME="Meccanoid"
export MECCANOID_PATH=$(readlink -f "$0")
export MECCANOID_DIRECTORY=$(dirname "$MECCANOID_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $MECCANOID_PID $MECCANOID_NAME

AmikooCommunication.sh "Amikoo" "Audio" "RobotMachineSoundBibleCom.mp3"

Amikoo.sh amikoo/moveforward && sleep 2
Amikoo.sh amikoo/movestop && sleep .6
Amikoo.sh amikoo/headleft && sleep .6
Amikoo.sh amikoo/headright && sleep .6

sleep 23

Amikoo.sh amikoo/headleft && sleep .6
Amikoo.sh amikoo/headright && sleep .6

# End of File

