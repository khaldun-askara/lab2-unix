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

