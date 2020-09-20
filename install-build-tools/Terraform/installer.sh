#!/bin/bash

# starting terraform install
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "${RED}Starting installation!\n"

curl -LO https://raw.github.com/robertpeteuil/terraform-installer/master/terraform-install.sh
chmod +x terraform-install.sh
./terraform-install.sh
