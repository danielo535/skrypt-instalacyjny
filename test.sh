#!/bin/bash

echo "Witaj w instalatorze Pterodactyl i Wings"
echo "Wybierz opcję instalacji:"
echo "1. Instalacja tylko Pterodactyl"
echo "2. Instalacja tylko Wings"
echo "3. Instalacja Pterodactyl i Wings"
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
  echo "Rozpoczynam instalację Pterodactyl i Wings"
  # tutaj możesz dodać komendy do instalacji Pterodactyl i Wings
  echo "Instalacja zakończona pomyślnie"
else
  echo "Nieznana opcja, instalacja przerwana"
fi
