#!/bin/bash

# fail on any error
set -eu

# login to your docker hub account
cat ~/my_password.txt | sudo docker login --username aricloud1 --password-stdin

# use docker tag command to give the image a new name
sudo docker tag techmax-as aricloud1/techmax-as

# push the image to your docker hub repository
sudo docker push aricloud1/techmax-as