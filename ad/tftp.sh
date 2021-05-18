#!/bin/bash

#########################################################################
#                                                                       #
# Leitura de Bilhetes Tarifação - Coleta quantidade de ligaçoes no dia  #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 22.09.20                                             #
#                                                                       #
# Descrição : Utiliza o nmap para verificar se o serviço de tftp esta   #
#  está ativo na porta 69                                               #
#                                                                       #
#                                                                       #
#                                                                       #
# Exemplo de uso: ./tftp.sh                                             #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################







SERVICO=` nmap -sU -p69 -v 192.168.0.102 |grep 69/udp | cut -d " " -f2 | cut -d"|" -f1 ` #verifica se o serviço está ativo


#echo $SERVICO


if test $SERVICO = open
then
        VARHORA=1
 #       echo servico funcionando $VARHORA
        echo 1 > /tmp/tftp.txt # valor 1 é OK

else
  #      echo servico inoperante
        echo 0 > /tmp/tftp.txt #VALO 0 -NAO OK


fi





