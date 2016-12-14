#!/bin/bash

cd "$(dirname "$0")"

args="$@"

docker build -t test1 .

docker run -v /:/host test1 /bin/bash -c "useradd -u $UID -m user; su user -c '$args'"
