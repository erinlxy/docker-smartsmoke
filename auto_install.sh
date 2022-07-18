#!/bin/sh
echo "#### install docker & docker-compose ####"
sudo sh setupdocker.sh  

echo "#### create a soft link from docker-compose to dc #### "
cp ./dc.sh /docker/dc.sh
chmod +x /docker/dc.sh
ln -sf /docker/dc.sh  /usr/bin/dc

echo "#### pull images from docker ####"
echo "####      make contains      ####"
cp ./docker-compose.yml /docker/smartsmoke/docker-compose.yml
dc up -d

echo "###################################"
echo "install smartsmoke successfully!"
echo "###################################"
