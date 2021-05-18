#!/bin/bash

#########################################################################
#                                                                       #
# Coleta dos juntores da Embratel -Coleta Juntores                      #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 27.11.18                                             #
#                                                                       #
# Descrição : Coleta os juntores dos E1 da Embratel direto do PABX      #
# e salva a saida em /tmp/E1_Embratel.txt                               #
#                                                                       #
#                                                                       #
#                                                                       #
# Exemplo de uso: ./Coleta_E1_Embratel.sh                               #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################

(sleep 3; echo "mtcl";sleep 2; echo "baroneza3138"; sleep 3;echo "trkstat -r 2";sleep 3 ) | telnet 172.16.9.10 > /tmp/E1_Embratel.txt
