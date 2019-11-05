#!/bin/bash

xcowsay  --at=400,250 "Menu para scripts do Projeto de Shell Script "

xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'

select i in "Fazer download das informações de um domínio." "Enviar mensagens para o Slack a partir da shell." "Estimar o tempo de leitura de um arquivo texto." "Frases da vaquinha do Shell." "Sair do menu."
do

   case $i in
            
      "Fazer download das informações de um domínio.")
         #read -pr "Qual o domínio a ser requisitado: " entrarArgumento
         entrarArgumento=$(zenity --entry --text "Qual o domínio a ser requisitado: " --title "Script Domínio" --entry-text="");
         ./dominio.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         ;;

      "Enviar mensagens para o Slack a partir da shell.")
         #read -pr "Escreva a mensagem: " entrarArgumento
         entrarArgumento=$(zenity --entry --text "Escreva a mensagem: " --title "Script Slack" --entry-text="");
         ./slack.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         ;;

      "Estimar o tempo de leitura de um arquivo texto.")
         #read -pr "Escreva o caminho do arquivo, caso o arquivo não esteja no mesmo diretório, informe o caminho completo: " entrarArgumento
         entrarArgumento=$(zenity --entry --text "Escreva o caminho do arquivo, caso o arquivo não esteja no mesmo diretório, informe o caminho completo: " --title "Script Tempo para Leitura" --entry-text="");
         ./tempoleitura.sh "$entrarArgumento"

         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         ;;

      "Frases da vaquinha do Shell.")
         fortune brasil | echo -e
         fortune brasil | xcowsay --at=400,250 
         echo
         echo -e "1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         ;;

      "Sair do menu.")
         echo
         echo -e "Saindo do script \n#VQV #gotrybe"
         xcowsay --at=400,250 $'Saindo do script \n#VQV #gotrybe'
         break
         ;;

      *)
         echo
         echo -e "Opção inválida, use os números entre 1 a 5 e tente de novo."
         xcowsay --at=400,250 "Opção inválida, use os números entre 1 a 5 e tente de novo."
         echo -e "Opções de menu\n1) Fazer download das informações de um domínio com o 'whois'.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu."
         xcowsay --at=400,250 $'Opções de menu\n1) Fazer download das informações de um domínio.\n2) Enviar mensagens para o Slack a partir da shell.\n3) Estimar o tempo de leitura de um arquivo texto.\n4) Frases da vaquinha do Shell.\n5) Sair do menu.'
         ;;

   esac

done