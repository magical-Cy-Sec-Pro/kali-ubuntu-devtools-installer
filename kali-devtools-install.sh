#!/bin/bash

echo "Installing developer and networking tools on Kali Linux..."

sudo apt update && sudo apt upgrade -y

# Essential tools
sudo apt install -y git curl wget vim unzip net-tools python3 python3-pip build-essential

# Docker setup
echo "Installing Docker..."
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker

# Add current user to docker group
sudo usermod -aG docker $USER

echo "All tools installed successfully on Kali Linux. You may need to reboot for Docker group changes to apply."
