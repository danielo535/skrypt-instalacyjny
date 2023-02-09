#!/bin/bash

echo "Witaj w skrypcie instalacji Pterodactyl, Wings i PHPMyAdmin na Ubuntu i Debian."

echo "Czy chcesz zainstalować Pterodactyl?"
select yn in "Tak" "Nie"; do
    case $yn in
        Tak ) 
            echo "Rozpoczynam instalację Pterodactyl..."
            sudo apt-get update
            sudo apt-get install -y curl gnupg2 lsb-release
            curl https://repo.pterodactyl.io/WNMP/9/repo/pubkey.asc | sudo apt-key add -
            echo "deb https://repo.pterodactyl.io/WNMP/9/deb/ lsb_release=stretch main" | sudo tee /etc/apt/sources.list.d/pterodactyl.list
            sudo apt-get update
            sudo apt-get install -y pterodactyl-daemon
            echo "Instalacja Pterodactyl zakończona pomyślnie."
            break;;
        Nie ) break;;
    esac
done

echo "Czy chcesz zainstalować Wings?"
select yn in "Tak" "Nie"; do
    case $yn in
        Tak ) 
            echo "Rozpoczynam instalację Wings..."
            sudo apt-get update
            sudo apt-get install -y curl gnupg2 lsb-release
            curl https://repo.pterodactyl.io/WNMP/9/repo/pubkey.asc | sudo apt-key add -
            echo "deb https://repo.pterodactyl.io/WNMP/9/deb/ lsb_release=stretch main" | sudo tee /etc/apt/sources.list.d/pterodactyl.list
            sudo apt-get update
            sudo apt-get install -y pterodactyl-panel
            echo "Instalacja Wings zakończona pomyślnie."
            break;;
        Nie ) break;;
    esac
done

echo "Czy chcesz zainstalować PHPMyAdmin?"
select yn in "Tak" "Nie"; do
    case $yn in
        Tak ) 
            echo "Rozpoczynam instalację PHPMyAdmin..."
            sudo apt-get update
            sudo apt-get install -y phpmyadmin
            echo "Instalacja PHPMyAdmin zakończona pomyślnie."
            break;;
        Nie ) break;;
    esac
done

echo "Instalacja zakończona."
