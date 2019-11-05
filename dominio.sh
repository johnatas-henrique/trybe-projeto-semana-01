#!/bin/bash

DOMAIN_REGEXP="[a-zA-Z]+(\.[a-zA-Z]+)"

if [[ -z "$1" ]]; then
    echo -e  "Ops, você precisa passar um domínio válido como argumento, porque será que o $USER deixou em branco?"
    xcowsay --think --at=400,250 "Ops, você precisa passar um domínio válido como argumento, porque será que o $USER deixou em branco?"
    exit 1
fi

if [[ $1 =~ $DOMAIN_REGEXP ]]; then
  echo
else
  echo -e  "Ops, argumento inválido, mas acho que o $USER apenas digitou errado."
  xcowsay --think --at=400,250 "Ops, argumento inválido, mas acho que o $USER apenas digitou errado."
  exit 1
fi

whois $1 > "$1.info"
echo -e "Arquivo criado no diretório corrente!"
xcowsay --at=400,250 "Arquivo criado no diretório corrente, com o nome $1.info!"