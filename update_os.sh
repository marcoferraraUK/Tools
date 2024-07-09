#!/bin/bash

echo "------------------------------------------------------------------"
echo "### run: apt-get update"
apt-get update

echo "------------------------------------------------------------------"
echo "### run: apt-get upgrade -y"
apt-get upgrade -y

echo "------------------------------------------------------------------"
echo "### run: sudo snap install google-cloud-sdk  --classic"
sudo snap install google-cloud-sdk --classic
echo "### run: sudo snap install google-cloud-cli  --classic"
sudo snap install google-cloud-cli --classic

echo "------------------------------------------------------------------"
echo "### run: apt-get clean"
apt-get clean

echo "------------------------------------------------------------------"
echo "### run: apt-get autoclean"
apt-get autoclean

echo "------------------------------------------------------------------"
echo "### run: apt-get autoremove -y"
apt-get autoremove -y

echo "------------------------------------------------------------------"
echo "### run: docker volume prune -f"
docker volume prune -f

echo "------------------------------------------------------------------"
echo "### run: docker system prune -a -f"
docker system prune -a -f
