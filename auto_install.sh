#!/bin/sh
echo "#### install docker & docker-compose ####"
sh setupdocker.sh  

echo "#### create a soft link from docker-compose to dc #### "
cp ./dc.sh /docker/dc.sh
chmod +x /docker/dc.sh
ln -sf /docker/dc.sh  /usr/bin/dc

echo "#### pull images from docker ####"
echo "####      make contains      ####"
cp ./docker-compose.yml /docker/smartsmoke/docker-compose.yml


echo "###################################"
echo "install smartsmoke successfully!Use command 'dc up -d' to start smartsmoke. "
echo "###################################"
