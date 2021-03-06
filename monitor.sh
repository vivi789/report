#!/bin/bash
echo "
██╗░░░██╗██╗███╗░░██╗░█████╗░██╗░░██╗░█████╗░░██████╗████████╗
██║░░░██║██║████╗░██║██╔══██╗██║░░██║██╔══██╗██╔════╝╚══██╔══╝
╚██╗░██╔╝██║██╔██╗██║███████║███████║██║░░██║╚█████╗░░░░██║░░░
░╚████╔╝░██║██║╚████║██╔══██║██╔══██║██║░░██║░╚═══██╗░░░██║░░░
░░╚██╔╝░░██║██║░╚███║██║░░██║██║░░██║╚█████╔╝██████╔╝░░░██║░░░
░░░╚═╝░░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═════╝░░░░╚═╝░░░
"
echo "OS: $(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d "=" -f 2)"
echo "UPTIME: $(uptime | awk -F "," {'print $1'})"
echo "LOAD: $(uptime | awk -F ":" {'print $5'})"
echo "RAM: $(free -h | grep -vE "total|Swap" | awk {'print $3"/"$2'})"
echo "SWAP: $(free -h | grep -vE "total|Mem" | awk {'print $3"/"$2'})"
echo "DISK:"
df -h | grep -vE '^Filesystem|tmpfs|cdrom|loop' | awk '{ print $3"/"$2" "$5 " " $1 }'
