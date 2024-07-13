#!/bin/bash

BLUE='\033[0;34m' 
red='\033[0;31m'
clear='\033[0m'

banner "welcome"
echo -e  "${red}HELLO GAUTHAM ${clear}"
echo "please provide the ip address that is to be tested"
read ip
echo "starting  test"
nmap -sVC $ip -o nmapsr.txt
dirsearch -u $ip -o dirsr.txt
echo "the results are out in their respective directories"
