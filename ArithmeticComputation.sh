#!/bin/bash/ -x
read -p "Enter three number: " a b c

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

declare -A results
results["operation1"]=$(operation1 $a $b $c)
results["operation2"]=$(operation2 $a $b $c)
results["operation3"]=$(operation3 $a $b $c)
results["operation4"]=$(operation4 $a $b $c)
echo ${results[@]}
