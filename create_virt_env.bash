#!/bin/bash

if [ ! -d $1 ]; then
 echo "Provided path doesn't exist... Cannot create virtual enviroment at $1"
 exit 1
fi

python3 -m venv $1
source $1/bin/activate
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt

deactivate
source $1/bin/activate
ansible-galaxy collection install community.docker