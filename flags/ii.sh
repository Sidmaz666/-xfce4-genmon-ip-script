#!/bin/bash
#####################################################################################################################################################
## Aurthor :    Sidhartha Mazumder
## Description : Very simple xfce4-genmon-plugin script to show country name/initials, city name along with the respective country flag and IP address in the tooltip. Well, Almost all country and City :)
#####################################################################################################################################################

## Get Country and City Infod
cc=$(curl -s ifconfig.co/country);
ccc=$(curl -s ifconfig.co/city);

# Get IP Address
ipa=$(echo "P: " && curl -s ipinfo.io/ip && echo " H: " && hostname -I | awk '{print $1}'
);
#Get Country Initials
cci=$(echo ${cc} | cut -c1-2);

#Make Country initials lowercase
gfccfi=$(echo ${cci} | tr '[:upper:]' '[:lower:]');

#Directory Location, Portable and Finding the Flag icon
readonly cdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";
readonly flgicon="${cdir}/$gfccfi.png";

#Compliling Outputs
opc=$(echo "<txt> $cci </txt><img>$flgicon</img><tool> $ipa L: $cc, $ccc</tool>");
#Echoing Outputs
echo $opc;
