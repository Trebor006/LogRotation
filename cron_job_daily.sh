#!/bin/bash

#Backups Logs and move files
cd "$HOME/logRotation/projects_logs"

echo -e "\e[36mDAILY:: INICIANDO BACKUPS DE LOGS\e[0m"

#Apache
apacheBackupFile="Apache_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Apache: $apacheBackupFile\e[0m"
tar -czvf "$apacheBackupFile" Apache_2k.log
echo -e "\e[36mDAILY:: backup $apacheBackupFile creado correctamente..\e[0m"
mv "$apacheBackupFile" ../logs/apache/

#OpenSSH
openSSHBackupFile="Open-ssh_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de OpenSSH: $openSSHBackupFile\e[0m"
tar -czvf "$openSSHBackupFile" OpenSSH_2k.log
echo -e "\e[36mDAILY:: backup $openSSHBackupFile creado correctamente..\e[0m"
mv "$openSSHBackupFile" ../logs/open-ssh/


#Thunderbird
thunderbirdBackupFile="Thunderbird_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Thunderbird: $thunderbirdBackupFile\e[0m"
tar -czvf "$thunderbirdBackupFile" Thunderbird_2k.log
echo -e "\e[36mDAILY:: backup $thunderbirdBackupFile creado correctamente..\e[0m"
mv "$thunderbirdBackupFile" ../logs/thunderbird/


#Android
androidBackupFile="Android_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Android: $androidBackupFile\e[0m"
tar -czvf "$androidBackupFile" Android_2k.log
echo -e "\e[36mDAILY:: backup $androidBackupFile creado correctamente..\e[0m"
mv "$androidBackupFile" ../logs/android/

#Windows
windowsBackupFile="Windows_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Windows $windowsBackupFile\e[0m"
tar -czvf "$windowsBackupFile" Windows_2k.log
echo -e "\e[36mDAILY:: backup $windowsBackupFile creado correctamente..\e[0m"
mv "$windowsBackupFile" ../logs/windows/

#Zookeeper
zookeeperBackupFile="Zookeeper_logs_$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Zookeeper: $zookeeperBackupFile\e[0m"
tar -czvf "$zookeeperBackupFile" Zookeeper_2k.log
echo -e "\e[36mDAILY:: backup $zookeeperBackupFile creado correctamente..\e[0m"
mv "$zookeeperBackupFile" ../logs/zookeeper/

echo -e "\e[36mDAILY:: BACKUPS DE LOGS TERMINADO\n\n\n\n\n\n\e[0m"