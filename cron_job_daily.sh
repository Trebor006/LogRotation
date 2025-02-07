#Backups Logs and move files
cd "$HOME/logRotation/projects_logs"

#Apache
apacheBackupFile="apache-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo "creando backup de Apache: $apacheBackupFile"
tar -czvf "$apacheBackupFile" Apache_2k.log
echo "backup $apacheBackupFile creado correctamente.."
mv "$apacheBackupFile" ../logs/apache/

#OpenSSH
openSSHBackupFile="open-ssh-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo "creando backup de OpenSSH: $openSSHBackupFile"
tar -czvf "$openSSHBackupFile" OpenSSH_2k.log
echo "backup $openSSHBackupFile creado correctamente.."
mv "$openSSHBackupFile" ../logs/open-ssh/


#Thunderbird
thunderbirdBackupFile="thunderbird-$(date +%Y%m%d-%H%M%S).tar.gz" 
echo "creando backup de Thunderbird: $thunderbirdBackupFile"
tar -czvf "$thunderbirdBackupFile" Thunderbird_2k.log
echo "backup $thunderbirdBackupFile creado correctamente.."
mv "$thunderbirdBackupFile" ../logs/thunderbird/


#Android
androidBackupFile="android-$(date +%Y%m%d-%H%M%S).tar.gz"
echo "creando backup de Android: $androidBackupFile"
tar -czvf "$androidBackupFile" Android_2k.log
echo "backup $androidBackupFile creado correctamente.."
mv "$androidBackupFile" ../logs/android/

#Windows
windowsBackupFile="windows-$(date +%Y%m%d-%H%M%S).tar.gz"
echo "creando backup de Windows $windowsBackupFile"
tar -czvf "$windowsBackupFile" Windows_2k.log
echo "backup $windowsBackupFile creado correctamente.."
mv "$windowsBackupFile" ../logs/windows/

#Zookeeper
zookeeperBackupFile="zookeeper-$(date +%Y%m%d-%H%M%S).tar.gz"
echo "creando backup de Zookeeper: $zookeeperBackupFile"
tar -czvf "$zookeeperBackupFile" Zookeeper_2k.log
echo "backup $zookeeperBackupFile creado correctamente.."
mv "$zookeeperBackupFile" ../logs/zookeeper/
