#!/bin/bash

if [[ -z $1 ]]
then 
    echo "Ops, você precisa passar um arquivo como argumento, porque será que o $USER deixou em branco?"
    xcowsay --think --at=400,250 $"Ops, você precisa passar um arquivo como argumento, porque será que o $USER deixou em branco?"
    exit 1
fi

if [ -e $1 ]
    then
        echo "Arquivo $1 encontrado!"
        xcowsay --at=400,250 $"Arquivo $1 encontrado!"
    else
        echo "Ops, o caminho $1 é inválido ou está indisponível, mas acho que o $USER apenas digitou errado."
        xcowsay --think --at=400,250 $"Ops, o caminho $1 é inválido ou está indisponível, mas acho que o $USER apenas digitou errado."
        exit 1
    fi

#read -pr "Em sua opnião, quantas palavras um usuário consegue ler por minuto? Pesquisas no Google indicam 150 palavras por minuto, mas permitimos que você escolha: " velocidadeLeitura
velocidadeLeitura=$(zenity --entry --text "Em sua opnião, quantas palavras um usuário consegue ler por minuto? Pesquisas no Google indicam 150 palavras por minuto, mas permitimos que você escolha: " --title "Script Tempo para Leitura" --entry-text="");

if [ -z $velocidadeLeitura ] || [ $velocidadeLeitura == 0 ]
    then 
        echo "Como não foi digitado um valor, entendemos que você concorda com o número de 150 palavras."
        xcowsay --at=400,250 $"Como não foi digitado um valor, entendemos que você concorda com o número de 150 palavras."
        velocidadeLeitura=150
    fi

let contarPalavras=$(wc -w < $1)

tempoLeitura1=$(echo "scale=0; $contarPalavras*60/$velocidadeLeitura" | bc)
tempoLeituraM=$(echo "scale=0; $tempoLeitura1 / 60" | bc)
tempoLeituraS=$(echo "scale=0; $tempoLeitura1 % 60" | bc)

echo -n 'O arquivo '$1', contém '$contarPalavras' palavras e será lido em '$tempoLeitura1's ou '$tempoLeituraM' minutos e '$tempoLeituraS$'s,\nlevando a média descrita acima em consideração.'
xcowsay --at=400,250 $'O arquivo '$1', contém '$contarPalavras' palavras e será lido em '$tempoLeitura1's ou '$tempoLeituraM' minutos e '$tempoLeituraS$'s,\nlevando a média descrita acima em consideração.'