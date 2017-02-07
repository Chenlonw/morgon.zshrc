#########################################################################
# File Name: fcitx.sh
# Description: 
# Author: Chenlong Wang
# mail: clwang88@gmail.com
# Created Time: ti. 07. feb. 2017 kl. 20.54 +0800
#########################################################################
#!/bin/sh

for pid in `pidof fcitx`
do 
nohup cpulimit -p $pid -l 30 -b 1>/dev/null 2>/dev/null &
done
