#!/bin/bash

echo "Witaj w instalatorze Pterodactyl, Wings i PHPMyAdmin"
echo "Wybierz opcję instalacji:"
echo "1. Instalacja tylko Pterodactyl"
echo "2. Instalacja tylko Wings"
echo "3. Instalacja tylko PHPMyAdmin"
echo "4. Instalacja Pterodactyl i Wings"
echo "5. Instalacja Pterodactyl i PHPMyAdmin"
echo "6. Instalacja Wings i PHPMyAdmin"
echo "7. Instalacja Pterodactyl, Wings i PHPMyAdmin"
read option

if [ $option == "1" ]
then
  echo "Rozpoczynam instalację Pterodactyl"
  # tutaj możesz dodać komendy do instalacji Pterodactyl
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "2" ]
then
  echo "Rozpoczynam instalację Wings"
  # tutaj możesz dodać komendy do instalacji Wings
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "3" ]
then
  echo "Rozpoczynam instalację PHPMyAdmin"
  # tutaj możesz dodać komendy do instalacji PHPMyAdmin
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "4" ]
then
  echo "Rozpoczynam instalację Pterodactyl i Wings"
  # tutaj możesz dodać komendy do instalacji Pterodactyl i Wings
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "5" ]
then
  echo "Rozpoczynam instalację Pterodactyl i PHPMyAdmin"
  # tutaj możesz dodać komendy do instalacji Pterodactyl i PHPMyAdmin
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "6" ]
then
  echo "Rozpoczynam instalację Wings i PHPMyAdmin"
  # tutaj możesz dodać komendy do instalacji Wings i PHPMyAdmin
  echo "Instalacja zakończona pomyślnie"
elif [ $option == "7" ]
then
  echo "Rozpoczynam instalację Pterodactyl, Wings i PHPMyAdmin"
  # tutaj możesz
  echo "Instalacja zakończona pomyślnie"
