#!/bin/bash

echo "Generating certificate for registry"
if [ ! -d ../configs/registry/certs ]; then
    mkdir -p ../configs/registry/certs
fi

openssl req -newkey rsa:4096 -nodes -sha256 -x509 -days 365 \
    -keyout ../configs/registry/certs/docker-registry.key \
    -out ../configs/registry/certs/docker-registry.crt
