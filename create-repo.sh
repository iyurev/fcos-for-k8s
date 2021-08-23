#!/bin/bash

if [[ $1 ==  "--recreate" ]]; then
printf "Recreate repositories\n"
rm -rf  /mnt/fcos-k8s 
rm -rf  /mnt/fcos-k8s-export
fi

mkdir -p /mnt/fcos-k8s 
mkdir -p /mnt/fcos-k8s-export
ostree --repo=/mnt/fcos-k8s init --mode=bare-user
ostree --repo=/mnt/fcos-k8s-export  init --mode=archive
