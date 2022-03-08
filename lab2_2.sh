#!/bin/bash

function computer {
    sticks_comp=1
    case ${sticks} in
        0)
            sticks_comp=0
        ;;
        1)
            sticks_comp=1
        ;;
        2)
            let sticks_comp=${sticks_comp}+$(( RANDOM % 2 ))
        ;;
        3)
            let sticks_comp=${sticks_comp}+$(( RANDOM % 3 ))
        ;;
        *)
            let sticks_comp=${sticks_comp}+$(( RANDOM % 3 ))
        ;;
    esac
    if [ ${sticks_comp} -ne 0 ]
    then
        echo "Киса выбрал ${sticks_comp} палочек"
        let sticks=${sticks}-${sticks_comp}
        echo "Теперь палочек ${sticks}"
        winner=0
    fi
}

function game_iteration {
    if [ ${sticks} -ge ${1} ]
    then
        let sticks=${sticks}-${1}
        echo "Теперь палочек ${sticks}"
        winner=1
        computer
        if [ ${sticks} -eq 0 ]
        then
            echo "Палочки кончились!"
            if [ ${winner} -eq 1 ]
            then
                echo "Вы победили"
            else
                echo "Победил киса"
            fi
        fi
    else
        echo "Палочек недостаточно!"
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
if (echo "${sticks}" | grep -E -q "^?[0-9]+$")
then
    echo "Введено палочек: ${sticks}"
else
    echo "Это не число, вы дурашка!!! Котик не будет играть с вами!"
    exit 1
fi
if [ ${sticks} -lt 1 ]
then
    echo "Введено некорректное число палочек! Киса не будет с вами играть!"
    exit 1
fi
winner=1

echo "Выберите, сколько хотите взять палочек!"
select opt in 1 2 3 4
do
    if [ ${opt} = "1" ]
    then
        game_iteration 1 
    elif [ ${opt} = "2" ]
    then
        game_iteration 2
    elif [ ${opt} = "3" ]
    then
        game_iteration 3
    elif [ ${opt} = "4" ]
    then
        game_iteration 4
    else
        echo "Неправильное количество палочек!"
    fi
    if [ ${sticks} -eq 0 ]
    then
        exit
    fi
    echo "Выберите, сколько хотите взять палочек!"
done
