#!/bin/bash

#----------------------------------------------------------------------------------------
logsFile="$HOME/logRotation/execution-logs/executionlogs.log"

# Definir el script a ejecutar diariamente!!
daily_script="$HOME/logRotation/ssh-scripts/cron_job_daily.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$daily_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null; echo "*/1 * * * * $daily_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo -e "\e[34mCron job configurado para ejecutar $daily_script cada dia.\e[0m"

#----------------------------------------------------------------------------------------

# Definir el script a ejecutar mensualmente!!!
monthly_script="$HOME/logRotation/ssh-scripts/cron_job_monthly.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$monthly_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null; echo "*/2 * * * * $monthly_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo -e "\e[34mCron job configurado para ejecutar $monthly_script cada mes.\e[0m"

#----------------------------------------------------------------------------------------

# Definir el script a ejecutar diariamente!!
apache_404_script="$HOME/logRotation/ssh-scripts/apache_404_resumen.sh"

# Asegurar que el script tenga permisos de ejecución
chmod +x "$apache_404_script"

# Agregar la tarea al crontab
(crontab -l 2>/dev/null; echo "*/1 * * * * $apache_404_script >> $logsFile 2>&1") | crontab -

# Verificar que el cron job fue agregado correctamente
echo -e "\e[34mCron job configurado para ejecutar $apache_404_script cada dia.\e[0m"

#----------------------------------------------------------------------------------------
crontab -l
