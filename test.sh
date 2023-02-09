#!/bin/bash

echo "Wybierz panel do instalacji:"
echo "1. Pterodactyl"
echo "2. Wings"
read -p "Wybierz opcję [1-2]: " option

if [ $option -eq 1 ]; then
  echo "Rozpoczynam instalację Pterodactyl..."
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install -y git nodejs yarn apache2 php7.2 libapache2-mod-php7.2
  sudo a2enmod rewrite headers
  sudo systemctl restart apache2
  cd /var/www/
  sudo git clone https://github.com/pterodactyl/panel.git
  cd panel
  sudo cp .env.example .env
  sudo sed -i 's/DB_DATABASE=panel/DB_DATABASE=pterodactyl/g' .env
  sudo sed -i 's/DB_USERNAME=panel/DB_USERNAME=pterodactyl/g' .env
  sudo sed -i 's/DB_PASSWORD=secret/DB_PASSWORD=secret_password/g' .env
  sudo apt-get install -y mariadb-server mariadb-client
  sudo mysql -uroot <<EOF
  CREATE DATABASE pterodactyl;
  CREATE USER 'pterodactyl'@'localhost' IDENTIFIED BY 'secret_password';
  GRANT ALL PRIVILEGES ON pterodactyl.* TO 'pterodactyl'@'localhost';
  FLUSH PRIVILEGES;
  exit
EOF
  sudo yarn install --no-lockfile
  sudo php artisan key:generate --ansi
  sudo php artisan migrate --seed
  sudo chown -R www-data:www-data *
  sudo systemctl restart apache2
  echo "Instalacja Pterodactyl zakończona!"
elif [ $option -eq 2 ]; then
  echo "Rozpoczynam instalację Wings..."
  sudo apt-get update
  sudo apt-get install -y curl
  curl https://wings.sh/install.sh | sudo bash
  echo "Instalacja Wings zakończona!"
else
  echo "Niepoprawny wybór. Spróbuj ponownie."
fi
