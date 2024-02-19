#!/bin/bash

# Define colors for formatting output
GREEN='\033[0;32m'
NORMAL='\033[0m'
BOLD='\033[1m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RED='\033[0;31m'

# Display JIT-RECON banner
printf "${BOLD}${CYAN}"
cat << "EOF"
 _ __ ___  __ _ _   _(_)_ __ ___ _ __ ___   ___ _ __ | |_ ___ 
| '__/ _ \/ _` | | | | | '__/ _ \ '_ ` _ \ / _ \ '_ \| __/ __|
| | |  __/ (_| | |_| | | | |  __/ | | | | |  __/ | | | |_\__ \
|_|  \___|\__, |\__,_|_|_|  \___|_| |_| |_|\___|_| |_|\__|___/
             |_|                                              
EOF
printf "${NORMAL}\n"

printf "${GREEN}[+] Installing GO.${NORMAL}\n"
sudo apt-get install go

printf "${GREEN}[+] Installing Subfinder.${NORMAL}\n"
sudo apt-get install subfinder

printf "${GREEN}[+] Installing HTTPX.${NORMAL}\n"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

printf "${GREEN}[+] Installing nuclei.${NORMAL}\n"
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

printf "${GREEN}[+] Installing Subzy.${NORMAL}\n"
go install -v github.com/LukaSikic/subzy@latest
fi
