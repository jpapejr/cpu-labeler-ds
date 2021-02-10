#!/bin/sh
LABEL=`awk '/((^model name.*))/ { print $0 }' /proc/cpuinfo | cut -d'(' -f2 | cut -d')' -f1 | tr [:blank:]-, - | uniq`
echo "kubectl label no/$NODE io.cpu.modelname=$LABEL --overwrite"
kubectl label no/$NODE io.cpu.modelname=$LABEL --overwrite
sleep 365d
