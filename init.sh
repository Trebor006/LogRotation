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
mkdir ssh-scripts

cd ssh-scripts
echo "---ssh-scripts"

echo "* Estructura de folders Creada!!!"
ls

echo "* Clonando archivos sh"

wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_daily.sh -O cron_job_daily.sh 
#&& chmod +x cron_job_daily.sh && ./cron_job_daily.sh 
wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/cron_job_monthly.sh -O cron_job_monthly.sh 
#&& chmod +x cron_job_monthly.sh && ./cron_job_monthly.sh 

cd ..


#Configure cronjob daily
echo logRotation/ssh-scripts/cron_job_daily.sh

#Configure cronjob monthly
echo logRotation/ssh-scripts/cron_job_monthly.sh
