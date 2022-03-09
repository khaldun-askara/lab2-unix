#!/bin/bash

if [ -z ${1} ] || [ -z ${2} ] || [ -z ${3} ] || [ -z ${4} ]
then
    echo "Неверный ввод. Введите a, b, x, y."
    exit 1
fi

z=$(echo "${1}*${3}+${2}" | bc -l)
if [ $(echo "$4==${z}" | bc) -eq 1 ]
then
    echo "yes"
else
    echo "no"
fi
