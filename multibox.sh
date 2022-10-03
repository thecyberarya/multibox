#!/bin/bash

echo "

 _______           _    __________________ ______   _______          
(       )|\     /|( \   \__   __/\__   __/(  ___ \ (  ___  )|\     /|
| () () || )   ( || (      ) (      ) (   | (   ) )| (   ) |( \   / )
| || || || |   | || |      | |      | |   | (__/ / | |   | | \ (_) / 
| |(_)| || |   | || |      | |      | |   |  __ (  | |   | |  ) _ (  
| |   | || |   | || |      | |      | |   | (  \ \ | |   | | / ( ) \ 
| )   ( || (___) || (____/\| |   ___) (___| )___) )| (___) |( /   \ )
|/     \|(_______)(_______/)_(   \_______/|/ \___/ (_______)|/     \|
                                                                     

                   **** Author: Dhiraj Arya****
            **** Github: www.github.com/itsdhirajarya ****
            **** Blog: www.thecyberarya.blogspot.com ****

"

echo "
Help show:
        Recruitment host os : kali linux or parrot os (succesful tested)

        1. Docker       :       Install docker in linux.
        2. Kali Linux   :       Run kali linux using docker.
        3. Parrot OS    :       Run parrot os using docker.
        4. Ubuntu       :       Run ubuntu using docker.
        5. Exit         :       Exit this command.
"


echo -n "Enter Your Choose --> "
read input

if [ $input == 1 ]
then
#check docker install in system
   if [ ! -x /var/lib/docker ]; then
        sudo apt install docker.io
   else
   echo "DOCKER ALREADY INSTALLED"
   fi
# kali linux install then run kali linux
elif [ $input == 2 ]; then
        sudo systemctl start docker
        echo "Starting Kali linux..."
        docker run -t -i kalilinux/kali-rolling

# Parrot os install then run parrot os
elif [ $input == 3 ]; then
        sudo systemctl start docker
        echo "Starting Parrot os..."
        docker run -t -i parrotsec/security:latest

# ubuntu install then run ubuntu
elif [ $input == 4 ]; then
        sudo systemctl start docker
        echo "Starting ubuntu..."
        docker run -t -i ubuntu:latest

#exit multibox exit
elif [ $input == 5 ]; then
        echo "Exit on multiboxtool..."
        exit
else
   echo "0"
fi
