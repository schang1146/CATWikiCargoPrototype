. ./setup_scripts/setenv.sh
ssh -p "${SSH_PORT}" -L "8080:${WWW_HOST}:8080" "${SSH_USER}@${SSH_HOST}"

#ssh -J root@ssh.sandpit.hostedpi.com:5204 -p 8222 wiki@localhost
