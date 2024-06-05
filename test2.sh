#!/bin/bash

#Disque usage alert
threshold=90
current_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$current_usage" -ge "$threshold" ]; then
echo "Attention"
else 
echo "Pas d'alerte"
fi 
