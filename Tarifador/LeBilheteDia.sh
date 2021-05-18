#!/bin/bash

#########################################################################
#                                                                       #
# Leitura de Bilhetes Tarifação - Coleta quantidade de ligaçoes no dia  #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 24.05.18                                             #
#                                                                       #
# Descrição : Calcula ligações do dia coletando quantidade de linhas    #
# utilizando os bilhetes em 192.168.0.4.                                #
# LigDia.txt - Armazena o nome do arquivo referente ao dia              #
# LigDia02.txt - Armazena a quantidade de linhas do arquivo LigDia.txt  #
#                                                                       #
# Exemplo de uso: ./LeBilheteDia.sh                                     #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################

DIA=$(date +%d%m)
CAMINHO="/mnt/bilhetes/" #Caminho do arquivo


LISTA=`ls $CAMINHO |grep $DIA > /tmp/LigDia.txt` #envia lista com nome dos arquivos



ARQ=`tail -n1 /tmp/LigDia.txt` #pega o nome do arquivo

QTDLIG=`wc -l $CAMINHO$ARQ |cut -d" " -f1 > /tmp/LigDia02.txt` #Conta quantas ligaçoes tem no arquivo e grava resultado em outro arquivo


#-----------Locais----------
QTDLIGLOCAL=`cat $CAMINHO$ARQ |grep LOCAL > /tmp/LigDiaLocal.txt` #Conta quantas ligaçoes locais tem no arquivo e grava resultado em outro arquivo

wc -l /tmp/LigDiaLocal.txt |cut -d" " -f1 > /tmp/LigDiaLocal02.txt #Salva a quantidade de ligações locais



#----------DDD------------

QTDLIGDDD=`cat $CAMINHO$ARQ |grep -c DDD > /tmp/LigDiaDDD02.txt` #Conta quantas ligaçoes DDD tem no arquivo e grava resultado em outro arquivo

#wc -l /tmp/LigDiaDDD.txt |cut -d" " -f1 > /tmp/LigDiaDDD02.txt #Salva a quantidade de ligações DDD



#-------------CEL--------------
QTDLIGCEL=`cat $CAMINHO$ARQ |grep CEL > /tmp/LigDiaCel.txt` #Conta quantas ligaçoes para Celular  tem no arquivo e grava resultado em outro arquivo


wc -l /tmp/LigDiaCel.txt |cut -d" " -f1 > /tmp/LigDiaCel02.txt #Salva a quantidade de ligações para Celular
