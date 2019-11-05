#!/bin/bash
sudo -u postgres createuser vagrant
sleep 2
sudo -u postgres createuser root
sleep 2
break 

sudo passwd postgres '12345678'

sleep 2
su - postgres


