#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export IXTAPA_PID=$$
export IXTAPA_NAME="Mapimi Application"
export IXTAPA_PATH=$(readlink -f "$0")
export IXTAPA_DIRECTORY=$(dirname "$IXTAPA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LOCAL_DEVICE="Juum"
LOCAL_INSTITUTION=`Name.sh`
LOCAL_LANGUAGE=`Language.sh`

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Que aportaron los Mayas a la tecnologia? \
      Uno, Las piramides. \
      Dos, El cero. \
      Tres, El calendario. \
      Cuatro, El chocolate. \
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 2

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Quienes son los fundadores de Intel? \
      "
StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Uno, Robert Noyce, Gordon Moore. \
      Dos, Steve Allen. \
      Tres, Elon Musk. \
      Cuatro, Larry Page and Sergey Brin. \
      "      
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 1

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Cuantos ingenieros eran cuando empeze Intel Guadalajara?
      Uno, 60. \
      Dos, 34. \
      Tres, 1200. \
      Cuatro, 15.
      " 
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 2

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      El microprocesador es el cerebro de la computadora?
      "
SurveyYesNo.sh $LOCAL_DEVICE spanish robot yes

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Las fabricas de Intel son 200 veces mas limpias que un quirofano??
      "
SurveyYesNo.sh $LOCAL_DEVICE spanish robot no

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      Podemos encontrar el microprocesador en?
      Uno, Accesorios para las personas. \
      Dos, En la tierra. \
      Tres, En el espacio. \
      Cuatro, En todos los anteriores.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 4

StreamAudio.sh $LOCAL_DEVICE spanish robot \
      "
      En el sistema binario, el cero significa?
      Uno, Encendido. \
      Dos, Apagado. \
      Tres, Nada. \
      Cuatro, Todo.
      "
SurveyMultipleChoice.sh $LOCAL_DEVICE spanish robot 1

# End of File
