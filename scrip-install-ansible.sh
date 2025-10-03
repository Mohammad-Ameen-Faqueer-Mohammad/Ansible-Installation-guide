#!/bin/bash

# Update and upgrade system packages
echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

# Install required dependencies
echo "Installing software-properties-common..."
sudo apt install software-properties-common -y

# Add Ansible PPA and install Ansible
echo "Adding Ansible PPA repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

echo "Installing Ansible..."
sudo apt install ansible -y

# Verify installation
echo "Ansible version installed:"
ansible --version
