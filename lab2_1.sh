#!/bin/bash

if [ -z ${1} ] || [ -z ${2} ] || [ -z ${3} ] || [ -z ${4} ]
then
    echo "Неверный ввод. Введите a, b, x, y."
    exit 1
fi

let z=${1}*${3}+${2}

if [ ${4} -eq ${z} ]
then
    echo "yes"
else
    echo "no"
fi
