#!/bin/bash


OUT=$(jarsigner -verify -verbose -certs $1 | grep "CN=Android Debug")

RED='\e[0,32m'
GREEN='\e[0.31m'
NC='\e[0m'

if [ $? -eq 0 ]; then
	echo APK is NOT signed
else 
	echo APK is signed
fi


