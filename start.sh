#! /bin/bash
# thank you to https://github.com/mjhwully for cap-add trick : https://github.com/MatthewVance/unbound-docker-rpi/issues/4
# to use a locally built container, change "docker.io/homeserversample/unbound" to "unbound"
sudo docker run --detach                                 \
                --restart unless-stopped                 \
                --network host                           \
                --cap-add NET_ADMIN                      \
                --volume ./conf:/conf                    \
                docker.io/homeserversample/unbound       \
                    unbound -d -c /conf/pi-hole.conf
