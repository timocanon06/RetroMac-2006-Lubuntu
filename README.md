# 🍏 Reviving a 2006 MacBook Pro: The Ultimate RetroGaming Guide

Welcome to this repository! This guide documents the complete journey of turning a vintage 2006 MacBook Pro into a fully functional RetroGaming arcade machine using a legacy version of Lubuntu and RetroArch (v1.4.1). 

If you have an old Intel Core Duo machine gathering dust, this guide will save you hours of troubleshooting. We will cover everything from fixing file transfer issues to extreme performance optimization.

## 💻 Hardware Context
* **Machine:** MacBook Pro (Early/Late 2006)
* **Processor:** Intel Core Duo / Core 2 Duo
* **GPU:** ATI Radeon X1600
* **RAM:** 3 GB
* **OS:** Legacy Lubuntu (32-bit/64-bit vintage support)
* **Software:** RetroArch 1.4.1 (Standard for older Lubuntu repositories)

---

## 🛠️ Step 1: Storage & File Transfers (The Sysadmin Way)

When installing Lubuntu on such an old machine, moving ROMs via modern USB drives or slow Wi-Fi can be a nightmare. Here are two ways we solved it.

### Option A: Fixing exFAT USB Drives
By default, older Linux distributions cannot read Microsoft's `exFAT` format (common on large USB drives) due to missing proprietary drivers. 
To fix this, open your terminal (`Ctrl + Alt + T`) and install the drivers:
```bash
sudo apt update
sudo apt install exfat-fuse exfat-utils
