#!/bin/bash

# Create a user with the provided username and password
useradd -rm -d /home/$DOCKER_SSH_USER -s /bin/bash -g root -G sudo $DOCKER_SSH_USER
echo "$DOCKER_SSH_USER:$DOCKER_SSH_PASSWORD" | chpasswd

# Grant sudo privileges without requiring a password
echo "$DOCKER_SSH_USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$DOCKER_SSH_USER

# Start SSH service
/usr/sbin/sshd -D
