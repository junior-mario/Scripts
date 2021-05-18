#!/bin/bash


#########################################################################
#                                                                       #
# Leitura de Bilhetes Tarifação - Coleta quantidade de ligaçoes no dia  #
#                                                                       #
#                                                                       #
# Autor: Mario (email de contato)                                       #
# Data de criação: 22.09.20                                             #
#                                                                       #
# Descrição : Conecta no switch e executa o comando para realizar       #
#  a copia do arquivo de configuração para um tftp                      #
#                                                                       #
#                                                                       #
#                                                                       #
# Exemplo de uso: ./tftp.sh                                             #
#                                                                       #
# Alterações                                                            #
#                                                                       #
#########################################################################




DATE=`date +%d-%m-%Y"-"%H.%M.%S`

#echo $DATE




NOME='Golfe-Clube--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.162

NOME='Golfe-Vestiario--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.229

NOME='Manutencao-Golfe--'$DATE''

(echo "katacl1sma"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.236

NOME='Vila-Hipica--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.172

NOME='Fibra-CPD--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.20

NOME='CPD02--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.251

NOME='CH-Recep--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.159

NOME='Core--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.243

NOME='CPD01--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.161

NOME='WGA--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.163

NOME='CH-Fibra--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.25

NOME='Bunker02--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.28

NOME='Centro-Medico--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.244

NOME='Caixa-dagua-F4--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.245

NOME='POP-Fibra--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.23

NOME='POP01--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.235

NOME='CH-Kids--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.174

NOME='CM-Academia--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.238

NOME='Portaria2-Pavilhao--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.1.144

NOME='Pousada--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.233

NOME='Pousada02--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.135

NOME='CH-Almox--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.158

NOME='Portaria2-Cameras--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.247

NOME='Portaria2--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.164

NOME='POP02--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.239

NOME='Portaria1-2950--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.240

NOME='Portaria1-3750--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.246

NOME='Portaria1-Cameras--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.1.146

NOME='Almoxarifado--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.241

NOME='Prainha--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.168

NOME='Caixa-Dagua-F2--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.230

NOME='Caixa-Dagua-F3--'$DATE''

(echo "katacl1sma"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.253

NOME='CM-Sede--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.237

NOME='Backup--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.157

NOME='Cadastro--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.166

NOME='Bunker--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.242


NOME='POP03--'$DATE''

(echo "katacl1sma@"; echo "enable"; sleep 2; echo "printscr44n@";sleep 2; echo "copy running-config tftp";  sleep 2; echo "192.168.0.102";  sleep 2; echo $NOME;  sleep 2; echo "exit") | telnet 192.168.0.232

