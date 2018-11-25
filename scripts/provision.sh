#!/usr/bin/env bash

# make sure apt database is up-to date
apt-get update

# install terraform
which wget unzip vim git &>/dev/null || {
  apt-get install -y wget unzip vim git
}

which terraform &>/dev/null || {
  pushd /usr/local/bin
  wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
  unzip terraform_0.11.10_linux_amd64.zip
  popd
}

# install golang
cd /vagrant
./go.sh --64