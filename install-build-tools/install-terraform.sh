#!/bin/bash
# starting terraform install
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "${RED}Adding HashiCorp Key!\n"

TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest |  grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`

printf "${RED}Downloading Terraform\n"
wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_linux_amd64.zip

printf "${RED} Unzipping File\n"
unzip terraform_${TER_VER}_linux_amd64.zip

printf "${RED} Moving Directory to local bin folder.\n"
sudo mv terraform /usr/local/bin/
printf "${RED} Confirming installation\n"
