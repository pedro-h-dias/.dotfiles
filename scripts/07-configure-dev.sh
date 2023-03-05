
# install python package manager
curl -sSL https://install.python-poetry.org | python3 -
sudo apt install python3-pip

# add keyrings
pip install keyrings.google-artifactregistry-auth
poetry self add keyrings.google-artifactregistry-auth

# install python version manager
curl https://pyenv.run | bash

# install dependencies for building python versions
sudo apt install -y libffi-dev libsqlite3-dev

# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# TODO: Run the Docker daemon as a non-root user (Rootless mode)
# BODY: https://docs.docker.com/engine/security/rootless/
# post install steps for docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# install kubernetes
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubectl

# install gke-gcloud-auth-plugin
sudo apt install google-cloud-sdk-gke-gcloud-auth-plugin

# install terraform
curl -fsSl https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo \
  "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com \
  $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform
terraform -install-autocomplete