#!/bin/bash
ifconfig | awk '/ether/ {print $2}'

#or
#ifconfig | grep -w "ether" | awk '{print $2}'
#breakdown it step by step:
#
#ifconfig: Displays network interface information.
#awk '/ether/ {print $2}': Directly filters lines that contain "ether" (without needing grep) and prints the second field (the MAC address).
#
#grep -w "ether" filters out lines that contain "ether" (the one with the MAC address).
#awk '{print $2}' prints the second field of the filtered line, which is the MAC address 00:14:22:01:23:45
