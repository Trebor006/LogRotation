#crear el folder principal
mkdir logRotation
cd logRotation


mkdir projects_logs

cd projects_logs
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Android/Android_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Apache/Apache_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Windows/Windows_2k.log
wget https://github.com/logpai/loghub/blob/master/OpenSSH/OpenSSH_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Thunderbird/Thunderbird_2k.log
wget https://raw.githubusercontent.com/logpai/loghub/refs/heads/master/Zookeeper/Zookeeper_2k.log


cd ..
mkdir logs
cd logs/

mkdir android
mkdir apache
mkdir windows
mkdir open-ssh
mkdir thunderbird
mkdir zookeeper

cd ..
mkdir ssh-scripts
