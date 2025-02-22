#! /bin/bash


cd /tmp
git clone https://github.com/NLnetLabs/unbound.git

cd ./unbound
./configure && make && make install
