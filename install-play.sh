#!/bin/sh

cd /tmp/
if ! [ -f play-2.2.1.zip ]; then
	wget http://downloads.typesafe.com/play/2.2.1/play-2.2.1.zip
fi
if ! [ -d ~/Programs/play-2.2.1 ]; then
	unzip play-2.2.1.zip
	mv play-2.2.1 ~/Programs/
	ln -s ~/Programs/play-2.2.1 ~/Programs/play
fi
