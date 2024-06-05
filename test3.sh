#!/bin/bash

service_name="nginx"
if systemctl is-active "$service_name"; then
echo "Le service est actif"
else
echo "Le service n'est pas actif"
fi 


if systemctl is-active --quiet "$service_name"; then
    echo " Le service tourne"
    echo " Tentative de stoppper $service_name"

    systemctl stop "$service_name"

    if systemctl is-active --quiet "$service_name"; then
        echo " Le service ne s'est pas arrêté"
    else
        echo " Le service s'est bien arrêté"
else
    echo "Le service est arrêté"
fi 