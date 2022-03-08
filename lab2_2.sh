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

while [ ${sticks} -ge 1 ]
do
    echo "Новая итерация, ${sticks}"
    # Пользовательское меню
    echo "Выберите, сколько хотите взять палочек!"
    get_variants
    OPTIONS=$variants
    select opt in ${OPTIONS}
    do
        if [ ${opt} = "1" ]
        then
            sticks=${sticks}-1
        elif [ ${opt} = "2" ]
        then
            sticks=${sticks}-2
        elif [ ${opt} = "3" ]
        then
            sticks=${sticks}-3
        elif [ ${opt} = "4" ]
        then
            sticks=${sticks}-4
        else
            echo "Bad option"
        fi
    done
done
