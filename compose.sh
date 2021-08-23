#!/bin/bash

mkdir -p /mnt/rpm-ostree-cache/fcos-k8s

rpm-ostree compose tree --unified-core --cachedir=/mnt/rpm-ostree-cache/fcos-k8s --repo=/mnt/fcos-k8s ./manifest.yaml
