#!/bin/bash
. ./setup_scripts/setenv.sh
set -e


# 1. Update system
$SUDO apt update

# 2. Install dependencies
$SUDO apt install -y ca-certificates curl gnupg lsb-release

# 3. Add Docker’s GPG key
$SUDO mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  $SUDO gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# 4. Set up Docker repo for Ubuntu 22.04 (jammy)
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  $SUDO tee /etc/apt/sources.list.d/docker.list > /dev/null

# 5. Update packages
$SUDO apt update

# 6. Install Docker + Compose plugin
$SUDO apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 7. Start and enable Docker
$SUDO systemctl enable docker
$SUDO systemctl start docker

# 8. (Optional) Use Docker without $SUDO
$SUDO usermod -aG docker $USER
newgrp docker

# 9. Test it!
docker run hello-world
