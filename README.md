# Homestead without composer and php. 
Homestead without composer.Run vagrant from everywere

It`s a simple script which allows to run vagrant without navigation to the homestead folder

# Installation. 

 - Create file homestead.sh
 - Copy and paste code below 
```sh
#!/bin/bash
cd ~/Vagrant/homestead/
if [[ $1 == edit ]]; then
   cd ~/.homestead/
   "${VISUAL:-gedit}" Homestead.yaml
else
    vagrant $1
fi
```
  - Change ~/Vagrant/homestead to your homestead folder
  -  ``` mv homestead.sh /usr/local/bin/homestead ```
  - And you can run ```homestead up ``` wherever you want


