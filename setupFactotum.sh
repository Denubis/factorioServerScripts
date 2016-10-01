#!/bin/bash
set -euo pipefail

sudo apt-get update && sudo apt-get install -y libzmq-dev libevent-dev python-dev python-pip python-dev build-essential

pip install --user click ptyprocess clint circus daemonocle requests

mkdir -p $HOME/bin
rm -rf $HOME/bin/FactoryFactotum

ln -s $(git rev-parse --show-toplevel)/FactoryFactotum.py $HOME/bin/FactoryFactotum


FactoryFactotum install
FactoryFactotum authenticate
FactoryFactotum setup
FactoryFactotum newmap



