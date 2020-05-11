#!/bin/bash
echo -e "\n------------------------------------Private Key------------------------------------"
openssl genrsa -out ca.key 2048
# openssl rsa -in ca.key -noout -text
echo -e "------------------------------------End------------------------------------\n"

# echo "------------------------------------Public Key------------------------------------"
# openssl rsa -in ca.key -pubout -out ca.pubkey
# openssl rsa -in ca.pubkey -pubin -noout -text
# echo -e "------------------------------------End------------------------------------\n"

# echo "------------------------------------Certificate Request------------------------------------"
# sudo openssl req -new -key example.org.key -out example.org.csr
# sudo openssl req -in example.org.csr -noout -text
# echo -e "------------------------------------End------------------------------------\n"

echo "------------------------------------Self-signed Certificate------------------------------------"
openssl req -new -x509 -key ca.key -out ca.crt
echo -e "------------------------------------End------------------------------------\n"
