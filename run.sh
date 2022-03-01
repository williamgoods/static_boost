#!/bin/bash

echo "now we are in the archlinux container test"

pacman -S --noconfirm extra/boost

ls /usr/lib/libboost_*
ls /usr/include/boost

echo "we show leave archlinux continer"
