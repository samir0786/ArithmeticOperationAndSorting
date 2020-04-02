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
operation4 $a $b $c

