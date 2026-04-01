#!/bin/bash
# ==============================================================================
# RetroGaming Setup Script for Legacy Lubuntu (MacBook Pro 2006)
# ==============================================================================

echo "Starting RetroGaming setup..."

# 1. Update repositories
echo "Updating package lists..."
sudo apt update

# 2. Install exFAT support for USB Drives
echo "Installing exFAT drivers..."
sudo apt install -y exfat-fuse exfat-utils

# 3. Install SSH Server for FileZilla Transfers
echo "Installing SSH Server..."
sudo apt install -y openssh-server

# 4. Fix RetroArch missing assets (Black squares UI bug)
echo "Downloading RetroArch graphical assets..."
sudo apt install -y retroarch-assets

# 5. Install Libretro Cores
echo "Installing Emulation Cores optimized for old CPUs..."
sudo apt install -y libretro-snes9x2005
sudo apt install -y libretro-mgba
sudo apt install -y libretro-genesisplusgx
sudo apt install -y libretro-mupen64plus
sudo apt install -y libretro-desmume2015

echo "====================================================="
echo "Installation complete!"
echo "Your Mac's local IP address for FileZilla (SFTP) is:"
hostname -I
echo "====================================================="
