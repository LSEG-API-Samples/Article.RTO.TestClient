#!/bin/sh

#V1
#obfuscated password
result=$(./dacsObfuscatePassword -e $RAW_PASSWORD)
#get only obfuscated password from the result
IFS=":" read -ra ADDR <<< $result
#print result, just for checking
#echo "obfuscated password is ${ADDR[1]}"
echo "obfuscated RTO password V1 success, setting it to environment variable named \$PASSWORD"
export PASSWORD=${ADDR[1]}


#V2
#obfuscated password
result=$(./dacsObfuscatePassword -e $RAW_CLIENT_SECRET)
#get only obfuscated password from the result
IFS=":" read -ra ADDR <<< $result
#print result, just for checking
#echo "obfuscated password is ${ADDR[1]}"
echo "obfuscated RTO Client Secret V2 success, setting it to environment variable named \$CLIENT_SECRET"
export CLIENT_SECRET=${ADDR[1]}