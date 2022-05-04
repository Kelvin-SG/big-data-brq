
#!/bin/bash
######################
# 
# quarto-script.sh
#
# Autor: Kelvin Soares
# Data de fabricação: 04 de maio de 2022
#
# Descrição: Estrutura de repetição WHILE
#######################
CONTADOR=0

read -p "Informe um número: " NUM 
echo "Número: $NUM"

while [ $CONTADOR -le $NUM ]
do
    echo "$CONTADOR"
    sleep 1 
    CONTADOR=$(($CONTADOR + 1))
    echo "Num de processos atuais: $(ps aux | wc -l)"
    
done