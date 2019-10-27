#!/bin/bash
sudo chmod -R 777 /home/vagrant
sleep 2
sudo -u postgres createuser vagrant
sleep 2
sudo -u postgres createuser root
sleep 2
