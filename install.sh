#! /bin/bash

###################################################################
#Script Name	:   install.sh                                                                                         
#Description	:   Installation of speedtest-tool                                                                                                                                                               
#Author       	:   Eric Klatzer                                              
#Email         	:   eric@klatzer.at                                         
###################################################################

# update package lists
sudo apt update

# curl
sudo apt install -y curl

# speedtest-cli
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt install -y speedtest

# jq
sudo apt install -y jq
