#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

nombre1="$1"
operateur="$2"
nombre2="$3"

if ! [[ $nombre1 =~ ^[0-9]+$ ]] || ! [[ $nombre2 =~ ^[0-9]+$ ]]; then
    echo "Les deux premiers arguments doivent être des nombres entiers."
    exit 1
fi

case "$operateur" in
    +)
        resultat=$((nombre1 + nombre2))
        ;;
    -)
        resultat=$((nombre1 - nombre2))
        ;;
    /)
        if [ "$nombre2" -eq 0 ]; then
            echo "Division par zéro impossible."
            exit 1
        fi
        resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
        ;;
    *)
        echo "Opérateur non reconnu. Utilisez '+', '-', ou '/'."
        exit 1
        ;;
esac

echo "Le résultat de l'opération $nombre1 $operateur $nombre2 est : $resultat"

