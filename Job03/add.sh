#!/bin/bash


if [ $# -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

nombre1="$1"
nombre2="$2"


if ! [[ $nombre1 =~ ^[0-9]+$ ]] || ! [[ $nombre2 =~ ^[0-9]+$ ]]; then
    echo "Les arguments doivent être des nombres entiers."
    exit 1
fi


resultat=$((nombre1 + nombre2))


echo "Le résultat de l'addition de $nombre1 et $nombre2 est : $resultat"

