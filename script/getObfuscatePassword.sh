#!/bin/sh

#obfuscated password
result=$(./dacsObfuscatePassword -e $RAW_PASSWORD)
#get only obfuscated password from the result
IFS=":" read -ra ADDR <<< $result
#print result, just for checking
#echo "obfuscated password is ${ADDR[1]}"
echo "obfuscated RTO password success, setting it to environment variable named \$PASSWORD"
export PASSWORD=${ADDR[1]}
