#!/bin/bash

let z=${1}*${3}+${2}

if [ ${4} -eq ${z} ]
then
    echo "yes"
else
    echo "no"
fi
