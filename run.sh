#!/bin/bash

echo "now we are in the archlinux container test"

pacman --noconfirm -Syyu
pacman -S --noconfirm extra/boost

ls /usr/lib/libboost_*
ls /usr/include/boost

mkdir -p /boost

#if [ -d "/boost/include" ]; then
rm -rf /boost/include
#fi

mkdir -p /boost/include

#if [ -d "/boost/lib" ]; then
rm -rf /boost/lib
#fi

mkdir -p /boost/lib

cp -rf /usr/lib/libboost_* /boost/lib
cp -rf /usr/include/boost  /boost/include/

echo "we show leave archlinux continer"
