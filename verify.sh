#!/bin/bash

openssl dgst -sha256 -verify  <(openssl x509 -in "ca.crt" -pubkey -noout) -signature $1 $2
