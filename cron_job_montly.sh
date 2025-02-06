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
