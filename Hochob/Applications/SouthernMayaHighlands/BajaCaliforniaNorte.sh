#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export BAJACALIFORNIANORTE_PID=$$
export BAJACALIFORNIANORTE_NAME="BajaCaliforniaNorte"
export BAJACALIFORNIANORTE_PATH=$(readlink -f "$0")
export BAJACALIFORNIANORTE_DIRECTORY=$(dirname "$BAJACALIFORNIANORTE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $BAJACALIFORNIANORTE_PID $BAJACALIFORNIANORTE_NAME

Memories.sh "5" "off" "${BAJACALIFORNIANORTE_NAME}" &

Eog.sh "$TRADITION/VisitorsCenter/Image/*" &
sleep 2
Vlc.sh "$AREA_SOUTERN_MAYA_HIGHLANDS/BajaCaliforniaNorte.mp3" &
sleep 18.8
Amikoo.sh $AMIKOO_DECIR "Nel Pastel"
sleep .6
Amikoo.sh amikoo/headright 1
sleep .6
Amikoo.sh amikoo/headleft 1
sleep .6
Amikoo.sh amikoo/headright 1
sleep .6
Amikoo.sh amikoo/headleft 1
sleep .6
Amikoo.sh amikoo/headright 1
sleep .6
Amikoo.sh amikoo/resetall 1
sleep 5

KillApp.sh "eog"
KillApp.sh "mpg123"

# End of File
