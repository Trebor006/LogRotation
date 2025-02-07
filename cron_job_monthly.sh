#!/bin/bash

#Move files to remote repository
#--------------------------------------------------------

cd "$HOME/logRotation/logs"

#--------------------------------------------------------


# Definir el array con los nombres de los folders
folders=("apache" "open-ssh" "thunderbird" "android" "windows" "zookeeper")

# Definir el destino base para SCP
PATH_BASE="logRotation/logs"
DEST_HOST="root@161.35.98.243"

# Obtener el mes y año actual en formato YYYY-MM
CURRENT_MONTH=$(date +%Y-%m)

# Iterar sobre los folders
for folder in "${folders[@]}"; do
    # Definir la ruta local del folder
    local_folder="./$folder"
    
    # Definir la ruta remota en el servidor con el subdirectorio de fecha
    remote_folder="$PATH_BASE/$folder/$CURRENT_MONTH"

    # Crear la carpeta remota si no existe
    ssh $DEST_HOST "mkdir -p $remote_folder"

    # Buscar archivos modificados en el último mes y transferirlos
    find "$local_folder" -type f -newermt "$(date -d "-1 month" +%Y-%m-%d)" | while read file; do
        # Transferir el archivo con scp
        scp "$file" "$DEST_HOST:$remote_folder/"
        
        # Si la transferencia fue exitosa, eliminar el archivo local
        if [ $? -eq 0 ]; then
            echo -e "\e[35mMONTHLY:: Archivo $file transferido correctamente a $remote_folder. Eliminando...\e[0m"
            rm "$file"
        else
            echo -e "\e[35mMONTHLY:: Error al transferir $file. No se eliminará.\e[0m"
        fi
    done
done

echo -e "\e[35mMONTHLY:: Transferencia y limpieza de archivos completada.\e[0m"


