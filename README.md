## Description
A Very simple xfce4-genmon-plugin script to show country name/initials, city name along with the respective counttry flag and IP address in the tooltip. I didn't found any other script that will help me so I made my own, it's not fancy, nor elegant code but I tried to be minimal, I hope it helps someone.
## Requirments
You will need to install the xfce4-genmon-plugin for xfce4-panel.
For Arch based distro run sudo pacman -S xfce4-genmon-plugin .
For Debian or Ubuntu based distro run sudo apt-get install xfce4-genmon-plugin .
After installed, go to your panel preferences >> Add items >> Select Generic Monitor (xfce4-genmon-plugin) .
Once the is plugin added to the panel, right click on the genmon plugin hide labels, and add the path to script.
## For Example
/home/USER/scripts/xfce4-genmon-ip-indicator/ipi.sh 
#
Once done, you are all set! If you hover your mouse you can see your IP Addresses and your Country/City name, if you don't want any of that, just go through the scipt and change it, there is only 9 lines of code.
