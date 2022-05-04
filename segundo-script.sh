#!/bin/bash
######################
# 
# segundo-script.sh
#
# Autor: Kelvin Soares
# Data de fabricação: 04 de maio de 2022
#
# Descrição: Segundo Script: Busca um texto em um arquivo
# 1° argumento tem o nome do arquivo e o 2° o texto a ser procurado
#######################

if  [ $# -le 1 ]
then 
    echo "Nome do arquivo e texto obrigátorio"
    exit 1
fi
# -i serve para para ignorar o sensitve (case sensistive)
# grep -ic $2 $1 # retorno a quantidade de linhas em que o 'texto' aparece 
# grep -i $2 $1 # retorno a linha onde a 'texto
# grep no shel inverte a ordem dos paramentos (invista do terminal)
CONTADOR=$(grep -ic -n $2.* $1)  
echo "CONTADOR $CONTADOR"

if [ $CONTADOR -eq 0 ]
then
    echo "Nenhuma ocorrecia da palavra"
elif [ $CONTADOR -eq 1 ]
then
    echo "Encontrou se $CONTADOR ocorrencia"    
else 
    echo "Encontrou-se $CONTADOR ocorrencias"
fi
