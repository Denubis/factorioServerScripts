#!/bin/bash
set -euo pipefail

wget -O gdrive "https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download"

chmod +x gdrive

sudo apt update

sudo apt install p7zip-full

sudo apt install byobu

sudo apt install fail2ban