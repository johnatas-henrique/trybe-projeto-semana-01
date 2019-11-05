#!/bin/bash

if [[ -z $* ]]
then 
    echo -e "Ops, você precisa passar uma mensagem como argumento, porque será que o $USER deixou em branco?"
    xcowsay --think --at=400,250 "Ops, você precisa passar uma mensagem como argumento, porque será que o $USER deixou em branco?"
    exit 1
else
    echo -e "Mensagem enviada! O conteúdo da mensagem é:\n $*"
    xcowsay --at=400,250 $'Mensagem enviada! O conteúdo da mensagem é:\n' $*
fi

curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$*\"}" https://hooks.slack.com/services/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