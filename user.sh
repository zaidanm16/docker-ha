#!/bin/bash

# Add User to docker group
usermod -aG docker $USER

# Give permission
chmod 666 /var/run/docker.sock