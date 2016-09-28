#!/bin/bash
set -euo pipefail

if [[ $EUID -eq 0]]; then
	echo "this should not be run as root or using sudo"
	exit 1
fi

#Update Packages
sudo apt-get update

#Install common packages
sudo apt-get -y install byobu p7zip-full fail2ban