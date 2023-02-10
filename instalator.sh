#!/bin/bash

echo "Wybierz opcję instalacji:"
echo "1) Pełna instalacja"
echo "2) Instalacja podstawowa"
echo "3) Anulowanie instalacji"
read -r option

case $option in
    1)
        echo "Uruchamianie pełnej instalacji..."
        #test
        ;;
    2)
        echo "Uruchamianie instalacji podstawowej..."
        #test
        ;;
    3)
        echo "Anulowanie instalacji."
        exit
        ;;
    *)
        echo "Nieprawidłowa opcja."
        exit
        ;;
esac

echo "Instalacja zakończona."
