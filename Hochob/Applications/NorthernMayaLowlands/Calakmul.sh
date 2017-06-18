#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export CALAKMUL_PID=$$
export CALAKMUL_NAME="Mapimi Application"
export CALAKMUL_PATH=$(readlink -f "$0")
export CALAKMUL_DIRECTORY=$(dirname "$CALAKMUL_PATH")

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
    Espeak.sh off english \
    "To be written"
else
    Espeak.sh off spanish \
    "La ciencia es muy divertida, es la curiosidad sobre el mundo y cómo se comporta. \
    La ciencia es observar el mundo, escuchar y registrar lo que se aprender. \
    Te gustaria entender porque la Tierra gira alrededor del Sol? \
    Porque las cosas caen hacia el suelo? \
    Que hace a los pajaros volar? \
    El cientifico es una persona que se dedica a entender el mundo y el universor y saber como se comportan. \
    Cualquiera puede pensar como un científico. Cuando seas grande, te gustaria ser Cientifico? \
    "
fi

#Los que aplican los descubrimientos de la ciencia para hacer cosas útiles se llaman Ingenieros.

Stream.sh "Eek'" "1.0" "$ESPEAK_SPEECH_MP3"

kill -- -$(ps -o pgid=$CALAKMUL_PID | grep -o '[0-9]*')

# End of File