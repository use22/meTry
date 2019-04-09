#!/bin/bash
if [ -s /usr/local/bin/ginterfaces/state_cops1.txt ];then
true > /usr/local/bin/ginterfaces/state_cops1.txt
fi
echo -e "AT+COPS?\r" > /dev/ttyUSB1
nohup head -n 8 /dev/ttyUSB1 > /usr/local/bin/ginterfaces/state_cops1.txt 2>&1 &
sleep 3
echo -e "AT+COPS?\r" > /dev/ttyUSB1
sleep 1
echo -e "AT+COPS?\r" > /dev/ttyUSB1
