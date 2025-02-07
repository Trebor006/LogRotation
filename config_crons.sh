#!/bin/bash

#----------------------------------------------------------------------------------------
logsFile="$HOME/logRotation/execution-logs/executionlogs.log"

# Definir el script a ejecutar diariamente!!
daily_script="$HOME/logRotation/ssh-scripts/cron_job_daily.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$daily_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null; echo "* * * * * $daily_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo "Cron job configurado para ejecutar $daily_script cada dia."
crontab -l

#----------------------------------------------------------------------------------------

# Definir el script a ejecutar mensualmente!!!
monthly_script="$HOME/logRotation/ssh-scripts/cron_job_monthly.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$monthly_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null; echo "* * * * * $monthly_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo "Cron job configurado para ejecutar $monthly_script cada mes."
crontab -l


#----------------------------------------------------------------------------------------

