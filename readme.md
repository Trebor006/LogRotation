wget https://raw.githubusercontent.com/Trebor006/LogRotation/refs/heads/master/init.sh -O init.sh && chmod +x init.sh && ./init.sh


tail -f "$HOME/logRotation/execution-logs/executionlogs.log"