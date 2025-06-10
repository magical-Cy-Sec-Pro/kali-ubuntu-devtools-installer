#!/bin/bash

echo "Installing developer and networking tools on Ubuntu..."

sudo apt update && sudo apt upgrade -y

# Install basic tools
sudo apt install -y git curl wget vim unzip net-tools python3 python3-pip build-essential

# Docker installation (recommended method)
echo "Installing Docker using official script..."

# Remove old versions
sudo apt remove -y docker docker-engine docker.io containerd runc

# Install Docker via convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add current user to docker group
sudo usermod -aG docker $USER

echo "Installation complete. You may need to log out or reboot for Docker group changes to take effect."
