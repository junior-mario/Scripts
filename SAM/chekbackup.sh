#!/bin/bash

#########################################################################
#                                                                       #
# Leitura de Bilhetes Tarifação - Coleta quantidade de ligaçoes no dia  #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 22.09.20                                             #
#                                                                       #
# Descrição : Verifica qual foi o ultimo backup realizado pelo SAM      #
# e compara se a hora da criação do arquivo é igual a estipulada.       #
#                                                                       #
#                                                                       #
#                                                                       #
# Exemplo de uso: ./checkbackup.sh                                      #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################

DIA=$(date +%d)
MES=$(date +%m)
ANO=$(date +%Y)

HORA=$(date +%H)


#echo $HORA


DATADIA=$DIA`echo "-"`$MES`echo "-"`$ANO

#echo $DATADIA  #imprime data dia-mes-ano


CAMINHO="/mnt/sam/" #Caminho do arquivo


LISTACOMPLETA=`ls -ltr $CAMINHO > /tmp/BackupSAM.txt` #envia lista com todos os arquivos de backup
#LISTA=`ls -la $CAMINHO |grep $DIA > /tmp/BackupSAM.txt` #envia lista com nome dos arquivos


#QTDARQ=`tail  /tmp/BackupSAM.txt |cut -d" " -f1 ` #Conta quanto arquivos foi encontrado com o valor do mes
QTDARQ=` tail -n10  /tmp/BackupSAM.txt  > /tmp/tailsam.txt` #Lista as 10 ultimas linhas do arquivo
QTDARQ=` sort -r  /tmp/tailsam.txt  > /tmp/tailsam2.txt` #Inverte a ordem da listagem para que fique em ordem crescente

ULTIMOBKP=` cat /tmp/tailsam2.txt | cut -d" " -f9 | head -n1 ` #pega o primeiro nome da lista

ULTIMOBKPDIA=` echo  $ULTIMOBKP | cut -d"_" -f2 ` #pega a data do arquivo mais recente
BKPDIA=` echo $ULTIMOBKPDIA | cut -d"-" -f1  ` #pega o dia
BKPMES=` echo $ULTIMOBKPDIA | cut -d"-" -f2  ` #pega o mes



ULTIMOBKPHORA=` echo  $ULTIMOBKP | cut -d"_" -f3 |cut -d"-" -f1 ` #pega o horario do backup HORA
ULTIMOBKPHORA02=` echo  $ULTIMOBKP | cut -d"_" -f3 |cut -d"-" -f2 ` #pega o horario do backup MINUTOS



echo ultimobkpdia  $ULTIMOBKPDIA
echo ultimobkphora $ULTIMOBKPHORA	

BKPREALIZADO=$ULTIMOBKPDIA`echo " "`$ULTIMOBKPHORA`echo ":" `$ULTIMOBKPHORA02 
echo $BKPREALIZADO > /tmp/ultimobkpsam.txt

DIA02=`echo $DIA `

#if test $DIA02 -eq $BKPDIA #compara se a data do ultimo bkp é a data do dia
#then
#	if
#	echo "dia correto"
#	else


#else
#echo "dia errado"
#fi





#echo variavel hora  $ULTIMOBKPHORA
#echo variavel dia $BKPDIA
#echo variavel mes  $BKPMES

VARHORA=0
VARDIA=0
VARMES=0




#verifica se a data de dia e mes batem com as do dia
if test $DIA = $BKPDIA #verifica se o bkp é do dia
then
        VARDIA=1
       # echo variavel do dia alterada! $VARDIA
fi

if test $MES = $BKPMES #verifica se o bkp é do mes
then
        VARMES=1
       #echo variavel do mes alterada! $VARMES
fi


if [ "$VARDIA" -eq 1 -a "$VARMES" -eq 1 ]
then
        echo 1 > /tmp/backupsamrealizado.txt # DIA E MES ESTAO OK ARQUIVO RECEBE VALOR 1

else
        echo 0 > /tmp/backupsamrealizado.txt # DIA OU MES NÃO ESTAO OK ARQUIVO RECEBE VALOR 0 -NAO ok

fi
##################################

echo ultimobkp hora antes do if $ULTIMOBKPHORA


#realiza teste para verificar se o horario do bkp bate com os pre estabelecidos 
if test $ULTIMOBKPHORA = 12 
then

	VARHORA=1
	echo variavel de hora alterada 12  $VARHORA
	echo 1 > /tmp/backupsamrealizado.txt # valor 1 é OK


elif test $ULTIMOBKPHORA = 18
then
	VARHORA=1
	echo variavel de hora alterada 18 $VARHORA
	echo 1 > /tmp/backupsamrealizado.txt # valor 1 é OK

elif test $ULTIMOBKPHORA = 23	
then
	VARHORA=1
	echo variavel de hora alterada 23 $VARHORA
	echo 1 > /tmp/backupsamrealizado.txt # valor 1 é OK

else
	echo FALHA
	echo 0 > /tmp/backupsamrealizado.txt #HORARIO COM ESTÁ OK ARQUIVO RECEBE VALO 0 -NAO OK


fi
###################################








