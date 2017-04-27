set -x

#killall -9 stream2chromecast.py

IAM=`whoami`

DEVICE=$1

if [ "$IAM" == "root" ]; then
        IPATH="/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
else
        IPATH="/home/"$IAM"/"
	cd $IPATH/CodeLabs/Hochob/Audio/stream2chromecast
fi

./stream2chromecast.py -devicename $DEVICE -continue
./stream2chromecast.py -devicename $DEVICE -setvol 1.0

