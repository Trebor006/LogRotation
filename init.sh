#crear el folder principal
echo "* Creando estructura de folders"
mkdir logRotation
cd logRotation
echo "-logRotation"

mkdir projects_logs
echo "--projects_logs"

cd projects_logs
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Android/Android_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Apache/Apache_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Windows/Windows_2k.log
wget https://github.com/logpai/loghub/blob/master/OpenSSH/OpenSSH_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Thunderbird/Thunderbird_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Zookeeper/Zookeeper_2k.log


cd ..
mkdir logs
echo "--logs"
cd logs/

mkdir android
echo "---android"
mkdir apache
echo "---apache"
mkdir windows
echo "---windows"
mkdir open-ssh
echo "---open-ssh"
mkdir thunderbird
echo "---thunderbird"
mkdir zookeeper
echo "---zookeeper"

cd ..
mkdir execution-logs
mkdir ssh-scripts

cd ssh-scripts
echo "---ssh-scripts"

echo "* Estructura de folders Creada!!!"
ls

echo "* Clonando archivos sh"

echo "Descargando configuración CRON diaro!!"
wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_daily.sh -O cron_job_daily.sh && chmod +x cron_job_daily.sh 

echo "Descargando configuración CRON Mensual"
wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_monthly.sh -O cron_job_monthly.sh && chmod +x cron_job_monthly.sh

#apache resumen
echo "Descargando Validador APACHE"
wget  https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/apache_404_resumen.sh -O apache_404_resumen.sh && chmod +x apache_404_resumen.sh

#configure crons!!!
echo "Configurando Crons!! y ejecutando!"
wget  https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/config_crons.sh -O config_crons.sh && chmod +x config_crons.sh && ./config_crons.sh

cd ..
