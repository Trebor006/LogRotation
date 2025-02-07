#!/bin/bash

cd "$HOME/logRotation/projects_logs"

# Definir fecha actual en formato YYYY-MM-DD
FECHA=$(date +"%Y-%m-%d")

# Nombre del archivo de resumen
ARCHIVO="apache-404-resumen-$FECHA.txt"

# Ruta del archivo de logs de Apache
LOG_APACHE="$HOME/logRotation/projects_logs/Apache_2k.log"

# Verificar si el archivo de logs existe
if [[ ! -f "$LOG_APACHE" ]]; then
    echo "Error: El archivo de logs no existe en la ruta especificada: $LOG_APACHE"
    exit 1
fi

# Filtrar todas las líneas con "[error]" usando AWK y guardarlas en el archivo de resumen
awk '$6 == "[error]" { print }' "$LOG_APACHE" > "$ARCHIVO"

# Agregar resumen de errores 404 al final del archivo
echo -e "\n--------------------------" >> "$ARCHIVO"
echo "Resumen de errores 404 para el día $FECHA:" >> "$ARCHIVO"
awk '$6 == "[error]" { errores404++; }
    END {
        print "Total de errores 404: " (errores404 ? errores404 : 0);
    }' "$LOG_APACHE" >> "$ARCHIVO"

# Enviar el resumen por correo (modifica destinatario)
#mail -s "Reporte de errores Apache - $FECHA" destinatario@correo.com < "$ARCHIVO"

# Borrar el archivo después de enviarlo
#rm -f "$ARCHIVO"

echo "Reporte generado, enviado y eliminado correctamente."
