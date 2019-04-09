#!/bin/bash
if [ -s /usr/local/bin/ginterfaces/state_cops2.txt ];then
true > /usr/local/bin/ginterfaces/state_cops2.txt
fi
echo -e "AT+COPS?\r" > /dev/ttyUSB5
nohup head -n 8 /dev/ttyUSB5 > /usr/local/bin/ginterfaces/state_cops2.txt 2>&1 &
sleep 3
echo -e "AT+COPS?\r" > /dev/ttyUSB5
sleep 1
echo -e "AT+COPS?\r" > /dev/ttyUSB5
