#!/bin/bash

source timelapse.config

#cd /home/pi/timelapse_photos

echo Use defaults? [y/n]
read DEFAULTS

if [ $DEFAULTS == 'y' ]
then
  clear
  sleep 1
  gphoto2 --capture-image-and-download -F $FRAMES  -I $INTER -f $PROJDIR
else
  echo Enter full path of project directory.
  read PROJDIR
  echo
  echo How many frames?
  read FRAMES
  echo
  echo Seconds between frames?
  read INTER
  clear
  sleep 1
  gphoto2 --capture-image-and-download -F $FRAMES  -I $INTER -f $PROJDIR
fi
#NOW=$(date +"%m.%d.%Y_%H:%M:%S")
#DIR=$(echo $NOW)_timelapse
#mkdir $NEWDIR
#cd $DIR
#FOLDER=/home/pi/timelapse_photos/$DIR
clear



#gphoto2 --capture-image-and-download -F $FRAMES  -I $INTER -f $PROJDIR
