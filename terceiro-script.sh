#!/bin/bash
######################
# 
# segundo-script.sh
#
# Autor: Kelvin Soares
# Data de fabricação: 04 de maio de 2022
#
# Descrição: Estrutura de repetição FOR
#######################

#for i in 1 2 3 4 5  
#for i in $(seq 1 5)

echo "${BASH_VERSION}"

for i in $(seq 1 2 10)
do 
    echo "$i"
done    