#!/bin/bash
set -euo pipefail

wget -O gdrive https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download

sleep 5

chmod +x gdrive

apt install p7zip-full

apt install byobu

apt install fail2ban