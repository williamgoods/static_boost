#!/bin/sh -l

mkdir -p /boost
mkdir -p /boost/include
mkdir -p /boost/include/boost
mkdir -p /boost/lib
cp -rf /usr/lib/libboost_* /boost/lib
cp -rf /usr/include/boost  /boost/include/boost

cd /boost
ls -al

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
