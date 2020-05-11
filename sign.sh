#!/bin/bash

echo -e "\nHashing file using SHA-256 and generating signature..."
openssl dgst -sha256 -sign "ca.key" -out $1.sha256 $1
echo -e "End.\n"
