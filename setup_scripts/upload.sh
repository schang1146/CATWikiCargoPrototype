. ./setup_scripts/setenv.sh
#--dry-run
rsync -avz --progress --delete -e "ssh -p ${SSH_PORT}" ../catwiki ${SSH_USER}@${SSH_HOST}:${INSTALL_DIR}/