#!/bin/bash/ -x
read -p "Enter three number: " a b c

function operation3() {
	echo $(($(($a+$b)) / $c))
}

function operation2() {
   echo $(($(($a*$b)) + $c))
}

function operation1() {
   echo $(($(($1+$2)) * $3))
}
operation3 $a $b $c

