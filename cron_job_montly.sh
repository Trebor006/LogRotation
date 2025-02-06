#Backups Logs and move files

#Apache
apacheBackupFile="apache-$(date +%Y%m%d-%H%M%S).tar.gz" 
tar -czvf "$apacheBackupFile" Apache_2k.log
mv "$apacheBackupFile" ../logs/apache/

#OpenSSH
openSSHBackupFile="open-ssh-$(date +%Y%m%d-%H%M%S).tar.gz" 
tar -czvf "$openSSHBackupFile" OpenSSH_2k.log
mv "$openSSHBackupFile" ../logs/open-ssh/


#Thunderbird
thunderbirdBackupFile="thunderbird-$(date +%Y%m%d-%H%M%S).tar.gz" 
tar -czvf "$thunderbirdBackupFile" Thunderbird_2k.log
mv "$thunderbirdBackupFile" ../logs/thunderbird/


#android
androidBackupFile="android-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czvf "$androidBackupFile" Android_2k.log
mv "$androidBackupFile" ../logs/android/

#windows
windowsBackupFile="windows-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czvf "$windowsBackupFile" Windows_2k.log
mv "$windowsBackupFile" ../logs/windows/

#zookeeper
zookeeperBackupFile="zookeeper-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -czvf "$zookeeperBackupFile" Zookeeper_2k.log
mv "$zookeeperBackupFile" ../logs/zookeeper/
