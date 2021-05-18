#!/bin/bash

#########################################################################
#                                                                       #
# Nome do Script - descrição breve                                      #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: DD/MM//YYY                                           #
#                                                                       #
# Descrição : realiza a leitura dos arquivos de ligação e faz a contagem#
#   das ligações  mensais                                      # 
#                                                                       #
# Exemplo de uso: ./PrimeiroScript.sh                                   #
#                                                                       #
# Alterações                                                            #
#        Dia X - Inclusao da funcao de ordenacao                        #
#        Dia Y - Correcao da funcao de leitura                          #
#                                                                       #
#########################################################################
#caminho arquivo /home/administrador/bilhetes
#MES=$(date +%d%m)
CAMINHO="/mnt/bilhetes/" #Caminho do arquivo

#NOMEBKP=backup_home_$(date +%Y%m%d%H%M).tgz
MES=$(date +%m)

#CAMINHO="/home/administrador/bilhetes"
#echo $CAMINHO

#echo " "

LISTA=`ls -1 $CAMINHO |grep "**"$MES > /tmp/LigMes.txt` #Gera lista de nome dos arquivos que contem o valor do mes

QTDARQ=`wc -l /tmp/LigMes.txt |cut -d" " -f1 ` #Conta quanto arquivos foi encontrado com o valor do mes

#echo $QTDARQ

x=1
while [ $x -le $QTDARQ ] #Executa loop baseado na quantidade de arquivos
do

NOMEARQ=`cat /tmp/LigMes.txt | head -n$x |tail -n1 ` #le nome sequencialmente
#       echo $NOMEARQ
        #echo " "
NOMEARQ02=`echo  $NOMEARQ |cut -c11-12 ` #Variavel utilizada para particionar o nome e verificar se o mês está correto
#echo $NOMEARQ02

if test $NOMEARQ02 -eq $MES
then
#       echo $MES $NOMEARQ"aquivo do mes correto"



LIG=`wc -l /$CAMINHO/$NOMEARQ |cut -d" " -f1` #Conta quantidades de linhas do arquivo atual
#echo $LIG


LIGTOTAL=$(expr $LIGTOTAL + $LIG) #Soma a quantidade de linha dos arquivos
echo $LIGTOTAL > /tmp/LigMes02.txt


LIGDDD=`cat $CAMINHO/$NOMEARQ |grep -c DDD`
LIGDDDTOTAL=$(expr $LIGDDDTOTAL + $LIGDDD)
echo $LIGDDDTOTAL > /tmp/LigMesDDD02.txt


LIGLOCAL=`cat $CAMINHO/$NOMEARQ |grep -c LOCAL`
LIGLOCALTOTAL=$(expr $LIGLOCALTOTAL + $LIGLOCAL)
echo $LIGLOCALTOTAL > /tmp/LigMesLocal02.txt


LIGCEL=`cat $CAMINHO/$NOMEARQ |grep -c CEL`
LIGCELTOTAL=$(expr $LIGCELTOTAL + $LIGCEL)
echo $LIGCELTOTAL > /tmp/LigMesCel02.txt





fi



x=$(expr $x + 1)
done
