#!/bin/bash

store=/System/Library/QuickTime/.webcam

sudo mkdir -p $store/1
sudo mkdir -p $store/2
sudo mkdir -p $store/3
sudo mkdir -p $store/4

if [ -d /System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component ]
then
	sudo mv /System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component $store/1
fi

#sudo mv /System/Library/PrivateFrameworks/CoreMediaIOServicesPrivate.framework/Versions/A/Resources/VDC.plugin $store/2

#sudo mv System/Library/PrivateFrameworks/CoreMediaIOServices.framework/Versions/A/Resources/VDC.plugin $store/3

if [ -d /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/Resources/VDC.plugin ]
then
	sudo mv /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/Resources/VDC.plugin $store/4
fi
