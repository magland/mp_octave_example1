#!/bin/bash

#octave $1

image_tag=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 16 | head -n 1)
container_name=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 16 | head -n 1)
docker build -t $image_tag .
docker run -v /:/host --name=$container_name $image_tag /bin/bash -c "useradd -u $UID -m user; su user -c 'octave $1'"
docker rm $container_name
docker rmi $image_tag
