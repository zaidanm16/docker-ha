#!/bin/bash

# FOR UBUNTU JAMMY 22.04

# Required Dependencies
apt update -y
apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

# Docker Repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update -y

# Install Docker
apt install docker-ce docker-ce-cli containerd.io docker-compose -y

# Check Status and Version
systemctl status docker
docker version
