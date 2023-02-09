#!/bin/bash

echo "Wybierz opcję instalacji:"
echo "1. Pterodactyl i Wings"
echo "2. PHPMyAdmin"
echo "3. Pterodactyl, Wings i PHPMyAdmin"
read -p "Wybierz opcję (1/2/3): " option

if [ $option -eq 1 ]; then
  # Instalacja Pterodactyl i Wings
  echo "Rozpoczynam instalację Pterodactyl i Wings..."
  # Wprowadź komendy instalacyjne dla Pterodactyl i Wings
  echo "Instalacja Pterodactyl i Wings zakończona pomyślnie."
elif [ $option -eq 2 ]; then
  # Instalacja PHPMyAdmin
  echo "Rozpoczynam instalację PHPMyAdmin..."
  # Wprowadź komendy instalacyjne dla PHPMyAdmin
  echo "Instalacja PHPMyAdmin zakończona pomyślnie."
elif [ $option -eq 3 ]; then
  # Instalacja Pterodactyl, Wings i PHPMyAdmin
  echo "Rozpoczynam instalację Pterodactyl, Wings i PHPMyAdmin..."
  # Wprowadź komendy instalacyjne dla Pterodactyl, Wings i PHPMyAdmin
  echo "Instalacja Pterodactyl, Wings i PHPMyAdmin zakończona pomyślnie."
else
  echo "Nieprawidłowa opcja."
fi
