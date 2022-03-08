#!/bin/bash

function get_variants {
    variants=""
    if [ ${sticks} -ge 4 ]
    then
        variants="1 2 3 4"
    elif [ ${sticks} -eq 3 ]
    then 
        variants="1 2 3"
    elif [ ${sticks} -eq 2 ]
    then
        variants="1 2"
    elif [ ${sticks} -eq 1 ]
    then
        variants="1"
    fi
}

echo "    /\_____/\\"
echo "   /  o   o  \       HI!!"
echo "  ( ==  ^  == )"
echo "   )         ("
echo "  (           )"
echo " ( (  )   (  ) )"
echo "(__(__)___(__)__)"
echo "Введите количество палочек!"
read sticks
echo "Введено палочек: ${sticks}"
get_variants
str=$variants
echo "${str}"

echo "Выберите, сколько хотите взять палочек!"
get_variants
OPTIONS=$variants
select opt in ${OPTIONS}
do
    if [ ${opt} = "1" ]
    then
        let sticks=${sticks}-1
        echo "${sticks}"
    elif [ ${opt} = "2" ]
    then
        let sticks=${sticks}-2
        echo "${sticks}"
    elif [ ${opt} = "3" ]
    then
        let sticks=${sticks}-3
        echo "${sticks}"
    elif [ ${opt} = "4" ]
    then
        let sticks=${sticks}-4
        echo "${sticks}"
    else
        echo "Bad option"
    fi
    echo "bruh"
    get_variants
    OPTIONS=$variants
    echo "${OPTIONS}"
done
