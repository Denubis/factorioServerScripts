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

#Installing google drive cli
wget -O /tmp/gdrive "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download"
sudo cp /tmp/gdrive /usr/local/bin/gdrive
sudo chmod a+x /usr/local/bin/gdrive