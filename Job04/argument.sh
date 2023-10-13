#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <nouveauFichier> <contenu>"
    exit 1

fi

nouveauFichier="$1"
contenu="$2"

if [ ! -e "$contenu" ]; then
    echo "Le fichier '$contenu' n'existe pas."
    exit 1

fi


cat "$contenu" >> "$nouveauFichier"
 

if [ $? -eq 0 ]; then
    echo "Le contenu de '$contenu' a été copié 
dans '$nouveauFichier' avec succès."
else
    echo "Une erreur s'est produite lors de la 
copie."

fi
