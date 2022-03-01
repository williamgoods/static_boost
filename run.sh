#!/bin/bash

echo "now we are in the archlinux container test"

pacman --noconfirm -Syyu
pacman -S --noconfirm extra/boost

ls /usr/lib/libboost_*
ls /usr/include/boost

cp -rf /usr/lib/libboost_* 
cp -rf /usr/include/boost

mkdir -p /boost
mkdir -p /boost/include
mkdir -p /boost/lib
cp -rf /usr/lib/libboost_* /boost/lib
cp -rf /usr/include/boost  /boost/include/

echo "we show leave archlinux continer"
