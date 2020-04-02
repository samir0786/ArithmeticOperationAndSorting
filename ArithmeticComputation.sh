#!/bin/bash/ -x
read -p "Enter three number: " a b c
count=0
declare -A results

function operation4() {
   echo $(($(($a%$b)) + $c))
}

function operation3() {
	echo $(($(($a+$b)) / $c))
}

function operation2() {
   echo $(($(($a*$b)) + $c))
}

function operation1() {
   echo $(($(($a+$b)) * $c))
}

results["operation1"]=$(operation1 $a $b $c)
results["operation2"]=$(operation2 $a $b $c)
results["operation3"]=$(operation3 $a $b $c)
results["operation4"]=$(operation4 $a $b $c)
#echo ${results[@]}

while [[ $count -ne ${#results[@]} ]]
do
	arr[$count]=${results[operation"$(( count+1 ))"]}
	count=$(( count+1 ))
done
echo ${arr[@]}
length=${#arr[@]}

function DescendingOrder() {
	for (( i=0; i<$length; i++ ))
	do
		for(( j=i+1; j<=$length; j++ ))
		do
			if [[ ${arr[i]%.*} -gt ${arr[j]%.*} ]]
			then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$temp
			fi
		done
	done
	echo ${arr[@]}
}
DescendingOrder
