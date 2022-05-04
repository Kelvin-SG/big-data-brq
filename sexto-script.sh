#!/bin/bash
######################
# 
# sexto-script.sh
#
# Autor: Kelvin Soares
# Data de fabricação: 04 de maio de 2022
#
# Descrição: Estrutura de repetição FOR aplicado a pastas
#######################



while true
do
    HOSTNAME=$(hostname)
    DATET=$(date "+%Y-%m-%d %H:%M:%S")
    CPUUSAGE=$(top -b -n 2 -d1 | grep -i "CpU(s)" | tail -n1 | awk '{print $2}' |awk -F. '{print $1}')
    MEMUSAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    DISKUSAGE=$(df -h / | awk '{print $5}' |tail -n 1 |sed 's/%//g')

    echo "======================"
    echo $DATET
    echo "HOSTNANE: $HOSTNAME"
    echo "CPU: $CPUUSAGE%"
    echo "MEMORIA: $MEMUSAGE%"
    echo "DISCO: $DISKUSAGE%" 
    echo "======================"
    echo 

    sleep 5
done