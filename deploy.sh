#!/bin/bash

echo 'widan16' | docker secret create mysql_root_password -
docker stack deploy -c widan.yml widan --with-registry-auth
