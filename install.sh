#!/bin/bash

pre_check()
{
	if [ ! -e "deps/masterhasp" ];then
		echo "cannot find masterhasp"
		exit 1
	fi

	if [ ! -e "deps/aksusbd_7.51-1_i386.deb" ];then
		echo "cannot find aksusbd_7.51-1_i386.deb "
		exit 1
	fi	
}

install()
{
	sudo dpkg -i --force-architecture  deps/aksusbd_7.51-1_i386.deb
	sudo apt-get install -y libjpeg8:i386
        sudo apt-get install -y libsm6:i386
	sudo apt-get install -y libxrender1:i386
	sudo apt-get install -y libxext6:i386
	sudo apt-get install -y lib32stdc++6
}

pre_check
install
