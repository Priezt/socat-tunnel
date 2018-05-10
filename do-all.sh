#!/bin/bash -l

echo *******************************************************
echo ***** Enter server IP for CommonName
echo *******************************************************
./generate-key.sh server
./generate-key.sh client
openssl dhparam -out dhparams.pem 2048
cat dhparams.pem >> server.pem
