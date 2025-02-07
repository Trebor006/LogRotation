#!/bin/bash

#----------------------------------------------------------------------------------------
logsFile="$HOME/logRotation/execution-logs/executionlogs.log"

# Definir el script a ejecutar diariamente

daily_script="$HOME/logRotation/ssh-scripts/cron_job_daily.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$daily_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null | grep -v "$daily_script"; echo "* * * * * echo \"[\$(date '+\%Y-\%m-\%d \%H:\%M:\%S')] [PID $$] Ejecutando: $daily_script\" >> $logsFile; $daily_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo "Cron job configurado para ejecutar $daily_script cada día."
crontab -l

#----------------------------------------------------------------------------------------

# Definir el script a ejecutar mensualmente

monthly_script="$HOME/logRotation/ssh-scripts/cron_job_monthly.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$monthly_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null | grep -v "$monthly_script"; echo "0 0 1 * * echo \"[\$(date '+\%Y-\%m-\%d \%H:\%M:\%S')] [PID $$] Ejecutando: $monthly_script\" >> $logsFile; $monthly_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo "Cron job configurado para ejecutar $monthly_script cada mes."
crontab -l

#----------------------------------------------------------------------------------------
