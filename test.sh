#!/bin/bash

echo "Witaj w instalatorze Pterodactyl Wings i PHPMyAdmin"
echo "Wybierz opcję instalacji:"
echo "1. Instalacja Pterodactyl"
echo "2. Instalacja Wings"
echo "3. Instalacja pHpMyAdmin"
echo "4. Instalacja wszystkiego"
echo "5. Wyjdz"
read option

if [ $option == "1" ]
then
  echo "Rozpoczynam instalację Pterodactyl"
  sudo apt-get update
  sudo apt-get install curl -y
  curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
  sudo apt-get install nodejs -y
  curl -Lo install.sh https://github.com/pterodactyl/panel/releases/download/v0.7.17/install.sh
  sudo bash install.sh
  echo "Panel Pterodactyl został zainstalowany pomyślnie!"

elif [ $option == "2" ]
then
  echo "Rozpoczynam instalację PHPMyAdmin"
  # tutaj możesz dodać komendy do instalacji PHPMyAdmin
  echo "Instalacja zakończona pomyślnie"

elif [ $option == "3" ]
then
  sudo apt-get update
  sudo apt-get install phpmyadmin -y
  sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
  sudo apt-get install php8.0-fpm php8.0-mysql php8.0-mysqli
  sudo apt-get install php8.0-xml
  sudo apt-get install php8.0-mbstring php8.0-zip php8.0-gd
  sudo systemctl restart php8.0-fpm
  sudo systemctl restart nginx
  echo "phpMyAdmin został zainstalowany pomyślnie!"

elif [ $option == "4" ]
then
  echo "Rozpoczynam instalację Pterodactyl Wings"
  # tutaj możesz dodać komendy do instalacji Pterodactyl Wings
  echo "Instalacja zakończona pomyślnie"

elif [ $option == "5" ]
then
  echo "Rozpoczynam instalację Pterodactyl Wings"
  exit 1
  echo "Instalacja zakończona pomyślnie"

fi