#! /bin/bash
# thank you to https://github.com/mjhwully for cap-add trick : https://github.com/MatthewVance/unbound-docker-rpi/issues/4
sudo docker run -it -p 5335:5335/tcp -p 5335:5335/udp --cap-add NET_ADMIN -v ./conf:/conf unbound unbound -d -vvvvvv -c /conf/pi-hole.conf
