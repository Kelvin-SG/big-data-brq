#!/bin/bash
######################
# 
# quinto-script.sh
#
# Autor: Kelvin Soares
# Data de fabricação: 04 de maio de 2022
#
# Descrição: Estrutura de repetição FOR aplicado a pastas
#######################

for i in /home/virtual/Desktop/brq/*
do
    #echo $i
    if [ -f $i ]
    then
        echo "O arquivo $i possui $(cat $i | wc -l) linhas"
    fi
done