#!/bin/sh

set -x

export HOCHOB_SERVER_MEDIA_SOURCE=$HOME/HochobServerMediaSource/

export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE/Camera/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA/Fswebcam/

export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE/Image/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE/Drawing/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND=$HOCHOB_SERVER_MEDIA_SOURCE/Sound/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/Season/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Espeak/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/VoiceRss/

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON_HALLOWEEN=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/Season/Halloween

export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE/Video/
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO/Ffmpeg/

export HOCHOB_SERVER_MEDIA_SOURCE_VISITORS=$HOCHOB_SERVER_MEDIA_SOURCE/Visitors/

test -d $HOCHOB_SERVER_MEDIA_SOURCE && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE

test -d $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA
test -d $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM

test -d $HOCHOB_SERVER_MEDIA_SOURCE_IMAGE && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_IMAGE
test -d $HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING

test -d $HOCHOB_SERVER_MEDIA_SOURCE_SOUND && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_SOUND
test -d $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SEASON
test -d $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER
test -d $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK
test -d $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_VOICERSS

test -d $HOCHOB_SERVER_MEDIA_SOURCE_VIDEO && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_VIDEO
test -d $HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG

test -d $HOCHOB_SERVER_MEDIA_SOURCE_VISITORS && echo "Directory exists" || mkdir $HOCHOB_SERVER_MEDIA_SOURCE_VISITORS

# End of File
