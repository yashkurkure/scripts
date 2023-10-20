#!/bin/bash
#
# Script syncs files from source to destination
#
#
cd ~/common && pwd && rsync -avz -e ssh ./* yash@192.168.0.12:~/common
pwd