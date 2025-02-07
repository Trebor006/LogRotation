#!/bin/bash

#Backups Logs and move files
cd "$HOME/logRotation/projects_logs"

#Apache
apacheBackupFile="apache-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo -e "\e[36mDAILY:: creando backup de Apache: $apacheBackupFile\e[0m"
tar -czvf "$apacheBackupFile" Apache_2k.log
echo -e "\e[36mDAILY:: backup $apacheBackupFile creado correctamente..\e[0m"
mv "$apacheBackupFile" ../logs/apache/

#OpenSSH
openSSHBackupFile="open-ssh-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo -e "\e[36mDAILY:: creando backup de OpenSSH: $openSSHBackupFile\e[0m"
tar -czvf "$openSSHBackupFile" OpenSSH_2k.log
echo -e "\e[36mDAILY:: backup $openSSHBackupFile creado correctamente..\e[0m"
mv "$openSSHBackupFile" ../logs/open-ssh/


#Thunderbird
thunderbirdBackupFile="thunderbird-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo -e "\e[36mDAILY:: creando backup de Thunderbird: $thunderbirdBackupFile\e[0m"
tar -czvf "$thunderbirdBackupFile" Thunderbird_2k.log
echo -e "\e[36mDAILY:: backup $thunderbirdBackupFile creado correctamente..\e[0m"
mv "$thunderbirdBackupFile" ../logs/thunderbird/


#Android
androidBackupFile="android-$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Android: $androidBackupFile\e[0m"
tar -czvf "$androidBackupFile" Android_2k.log
echo -e "\e[36mDAILY:: backup $androidBackupFile creado correctamente..\e[0m"
mv "$androidBackupFile" ../logs/android/

#Windows
windowsBackupFile="windows-$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Windows $windowsBackupFile\e[0m"
tar -czvf "$windowsBackupFile" Windows_2k.log
echo -e "\e[36mDAILY:: backup $windowsBackupFile creado correctamente..\e[0m"
mv "$windowsBackupFile" ../logs/windows/

#Zookeeper
zookeeperBackupFile="zookeeper-$(date +%Y%m%d-%H%M%S).tar.gz"
echo -e "\e[36mDAILY:: creando backup de Zookeeper: $zookeeperBackupFile\e[0m"
tar -czvf "$zookeeperBackupFile" Zookeeper_2k.log
echo -e "\e[36mDAILY:: backup $zookeeperBackupFile creado correctamente..\e[0m"
mv "$zookeeperBackupFile" ../logs/zookeeper/
