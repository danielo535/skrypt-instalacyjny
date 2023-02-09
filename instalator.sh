#!/bin/bash

# Instalacja phpMyAdmin
install_phpmyadmin(){
  sudo apt-get update
  sudo apt-get install phpmyadmin -y
  sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
  sudo apt-get install php8.0-fpm php8.0-mysql php8.0-mysqli
  sudo apt-get install php8.0-xml
  sudo apt-get install php8.0-mbstring php8.0-zip php8.0-gd
  sudo systemctl restart php8.0-fpm
  sudo systemctl restart nginx
  echo "phpMyAdmin został zainstalowany pomyślnie!"
}

# Instalacja Wings
install_wings(){
  sudo apt-get update
  sudo apt-get install nodejs npm -y
  sudo npm install -g wings-cli
  echo "Wings został zainstalowany pomyślnie!"
}

# Instalacja panelu Pterodactyl
install_pterodactyl(){
  sudo apt-get update
  sudo apt-get install curl -y
  curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
  sudo apt-get install nodejs -y
  curl -Lo install.sh https://github.com/pterodactyl/panel/releases/download/v0.7.17/install.sh
  sudo bash install.sh
  echo "Panel Pterodactyl został zainstalowany pomyślnie!"
}

# Opcja wyboru instalacji
echo "Wybierz opcję instalacji:"
echo "1) phpMyAdmin"
echo "2) Wings"
echo "3) Panel Pterodactyl"
echo "4) Zainstaluj wszystko"

read -p "Wybierz opcję (1, 2, 3 lub 4): " option

case $option in
  1)
    install_phpmyadmin
    ;;
  2)
    install_wings
    ;;
  3)
    install_pterodactyl
    ;;
  4)
    install_phpmyadmin
    install_wings
    install_pterodactyl
    ;;
  *)
    echo "Nieznana opcja, instalacja przerwana."
    exit 1
    ;;
esac
}
