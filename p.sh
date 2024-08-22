#!/usr/bin/bash

BASE_DIR=$(pwd)

for dir in *;
do
	if [ -d "$dir" ];
	then
		cd $dir
        makepkg --printsrcinfo > .SRCINFO
		cd $BASE_DIR
	fi
done
