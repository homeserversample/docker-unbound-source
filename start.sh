#! /bin/bash
# thank you to https://github.com/mjhwully for cap-add trick : https://github.com/MatthewVance/unbound-docker-rpi/issues/4
sudo docker run --detach                                 \
                --restart unless-stopped                 \
                --network host                           \
                --cap-add NET_ADMIN                      \
                --volume ./conf:/conf                    \
                unb                                      \
                    unbound -d -c /conf/localhost.conf
