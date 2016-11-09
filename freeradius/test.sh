#/bin/bash
radtest testing password `docker inspect -f {{.NetworkSettings.Networks.bridge.IPAddress}} $(docker ps -lq)` 0 secret123
