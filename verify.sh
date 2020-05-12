#!/bin/bash

openssl x509 -in "ca.crt" -pubkey -out "ca.pubkey"
openssl dgst -sha256 -verify  "ca.pubkey" -signature $1 $2
