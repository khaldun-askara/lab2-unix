#!/bin/bash

function get_variants {
    if [ ${sticks} -ge 4 ]
    then
        return "1 2 3 4"
    elif [ ${sticks} -eq 3 ]
    then 
        return "1 2 3"
    elif [ ${sticks} -eq 2 ]
    then
        return "1 2"
    elif [ ${sticks} -eq 1 ]
    then
        return "1"
    else
        return ""
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
str = get_variants
echo "${str}"

