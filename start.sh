#! /bin/bash
# thank you to https://github.com/mjhwully for cap-add trick : https://github.com/MatthewVance/unbound-docker-rpi/issues/4
sudo docker run                                    \
    -d                                             \
    -it                                            \
    --rm                                           \
    --network host                                 \
    --cap-add NET_ADMIN                            \
    -v ./conf:/conf                                \
    docker.io/homeserversample/unbound             \
        unbound -d -c /conf/pi-hole.conf
