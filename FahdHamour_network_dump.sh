#!/bin/bash


OUTPUT_FILE="/home/$USER/FahdHamour_network_report_$(date +%F).txt"

echo "========================================" | tee $OUTPUT_FILE
echo " NETWORK INFORMATION REPORT" | tee -a $OUTPUT_FILE
echo " Generated on: $(date)" | tee -a $OUTPUT_FILE
echo "========================================" | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== SYSTEM INFORMATION ===" | tee -a $OUTPUT_FILE
echo "Command: hostname" | tee -a $OUTPUT_FILE
hostname | tee -a $OUTPUT_FILE

echo "Command: uname -a" | tee -a $OUTPUT_FILE
uname -a | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== IP CONFIGURATION ===" | tee -a $OUTPUT_FILE
echo "Command: ip a" | tee -a $OUTPUT_FILE
ip a | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== ROUTING TABLE ===" | tee -a $OUTPUT_FILE
echo "Command: ip route" | tee -a $OUTPUT_FILE
ip route | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== DNS CONFIGURATION ===" | tee -a $OUTPUT_FILE
echo "Command: cat /etc/resolv.conf" | tee -a $OUTPUT_FILE
cat /etc/resolv.conf | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== NETWORK CONNECTIONS ===" | tee -a $OUTPUT_FILE
echo "Command: ss" | tee -a $OUTPUT_FILE
ss | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== CONNECTIVITY TEST ===" | tee -a $OUTPUT_FILE
echo "Command: ping -c 3 google.com" | tee -a $OUTPUT_FILE
ping -c 3 google.com | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "=== TRACE PATH ===" | tee -a $OUTPUT_FILE
echo "Command: tracepath google.com" | tee -a $OUTPUT_FILE
tracepath google.com | tee -a $OUTPUT_FILE

echo "" | tee -a $OUTPUT_FILE
echo "Report saved to: $OUTPUT_FILE"
