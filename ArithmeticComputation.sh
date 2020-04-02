#!/bin/bash/-x
read -p "Enter three number: " a b c

function operation1() {
   echo $(($(($1+$2)) * $3))
}
operation1 $a $b $c

