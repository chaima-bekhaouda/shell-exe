#!/bin/bash

USERNAME="nom_utilisateur"


CONNECTIONS=$(who | grep -c "$USERNAME")
 
DATE=$(date +'%d-%m-%Y-%H:%M')

FILENAME="number_connection-$DATE"
echo "$CONNECTIONS" > "$FILENAME"

tar -czvf "$FILENAME.tar" "$FILENAME"

mv "$FILENAME.tar" ~/Job8:Backup/

*/30 * * * * /Users/admin/Desktop/shell.exe/job8/get_logs.sh