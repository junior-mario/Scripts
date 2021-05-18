#!/bin/bash

#########################################################################
#                                                                       #
# Coleta de sinal de fibra das ONTs OLT2                                #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 21.04.2019                                           #
#                                                                       #
# Descrição : Conecta na OLT2 e executa comando para mostrar o sinal    #
#   de fibra de todas as onts e armazena no arquivo OLT2.txt            #
#                                                                       #
# Resultado é armazenado em                                             #
# /home/administrador/scripts/ftth/arquivosOLT2                         #
#                                                                       #
# Exemplo de uso: ./ColetaOLT2.sh                                       #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################


DATE=`date +%Y.%m.%d"-"%H:%M:%S`
NOME='SinalOLT2-'$DATE'.txt'

(echo "isadmin";sleep 2; echo "ANS#150"; sleep 3;echo "show equipment ont optics"; sleep 50;  ) | telnet 10.0.200.6 > /home/administrador/scripts/ftth/arquivosOLT2/$NOME



