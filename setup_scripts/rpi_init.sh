. ./setup_scripts/setenv.sh
ssh -p ${SSH_PORT} ${SSH_USER}@${SSH_HOST} "apt-get update; apt-get install rsync"

