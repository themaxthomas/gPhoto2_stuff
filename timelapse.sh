#!/bin/bash

cd /home/pi/timelapse_photos

echo Frame count
read FRAMES

echo How Long
read INTER

NOW=$(date +"%m.%d.%Y_%H:%M:%S")
DIR=$(echo $NOW)_timelapse
mkdir $DIR
cd $DIR
FOLDER=/home/pi/timelapse_photos/$DIR
clear



gphoto2 --capture-image-and-download -F $FRAMES  -I $INTER -f $FOLDER
