#!/bin/bash

cd ~/Vagrant/homestead/
if [[ $1 == edit ]]; then
   cd ~/.homestead/
   "${VISUAL:-gedit}" Homestead.yaml
else
    vagrant $1
fi
