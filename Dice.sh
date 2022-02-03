#!/bin/bash -x

randomCheck=$((RANDOM%5+1))
Dice_dict[1]=0
Dice_dict[2]=0
Dice_dict[3]=0
Dice_dict[4]=0
Dice_dict[5]=0
Dice_dict[6]=0

for key in ${!Dice_dict[@]}
do
	while [[ ${Dice_dict[$key]} -lt 10 ]]
	do
		for $key in "${!Dice_dict[@]}"
		do
			if [[ $randomCheck -eq $key ]]
			then
				Dice_func[$key]+=1
			fi
		done
	echo ${Dice_dict[$key]}
	done
done
