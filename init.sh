#crear el folder principal
echo -e "\e[31m* Creando estructura de folders\e[0m"
mkdir logRotation
cd logRotation
echo -e "\e[32m-logRotation\e[0m"

mkdir projects_logs
echo -e "\e[32m--projects_logs\e[0m"

cd projects_logs
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Android/Android_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Apache/Apache_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Windows/Windows_2k.log
wget https://github.com/logpai/loghub/blob/master/OpenSSH/OpenSSH_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Thunderbird/Thunderbird_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Zookeeper/Zookeeper_2k.log


cd ..
mkdir logs
echo -e "\e[32m--logs\e[0m"
cd logs/

mkdir android
echo -e "\e[32m---android\e[0m"
mkdir apache
echo -e "\e[32m---apache\e[0m"
mkdir windows
echo -e "\e[32m---windows\e[0m"
mkdir open-ssh
echo -e "\e[32m---open-ssh\e[0m"
mkdir thunderbird
echo -e "\e[32m---thunderbird\e[0m"
mkdir zookeeper
echo -e "\e[32m---zookeeper\e[0m"

cd ..
mkdir execution-logs
mkdir ssh-scripts

cd ssh-scripts
echo -e "\e[32m---ssh-scripts\e[0m"

echo -e "\e[31m* Estructura de folders Creada!!!\e[0m"
ls

echo -e "\e[31m* Clonando archivos sh\e[0m"

echo -e "\e[31mDescargando configuración CRON diaro!!\e[0m"
wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_daily.sh -O cron_job_daily.sh && chmod +x cron_job_daily.sh 

echo -e "\e[31mDescargando configuración CRON Mensual\e[0m"
wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_monthly.sh -O cron_job_monthly.sh && chmod +x cron_job_monthly.sh

#apache resumen
echo -e "\e[31mDescargando Validador APACHE\e[0m"
wget  https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/apache_404_resumen.sh -O apache_404_resumen.sh && chmod +x apache_404_resumen.sh

#configure crons!!!
echo -e "\e[31mConfigurando Crons!! y ejecutando!\e[0m"
wget  https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/config_crons.sh -O config_crons.sh && chmod +x config_crons.sh && ./config_crons.sh

cd ..


export EDITOR=vim


tail -f "$HOME/logRotation/execution-logs/executionlogs.log"