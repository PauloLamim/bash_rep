#!/bin/bash
echo "Simple Calculator"

sum=0

echo " Enter one no."
read n1
echo "Enter second no."
read n2
echo ""
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Exit"
echo "Enter your choice"
read ch
case $ch in
	1)sum=`expr $n1 + $n2`
		echo "Sum ="$sum;;
	2)sum=`expr $n1 - $n2`
		echo "Sub = "$sum;;
	3)sum=`expr $n1 \* $n2`
		 echo "Mul = "$sum;;
	4)sum=`expr $n1 / $n2`
		 echo "Div = "$sum;;
	5) exit;;
	*)echo "Invalid choice";;
esac
while true;
do
	echo "Enter another no."
	read n
	echo ""
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "5.Exit"
	echo "6.Reset Value"
	echo "Enter your choice"
	read ch
	case $ch in
		1)sum=`expr $sum + $n`
			echo "Sum ="$sum;;
		2)sum=`expr $sum - $n`
			echo "Sub = "$sum;;
		3)sum=`expr $sum \* $n`
			 echo "Mul = "$sum;;
		4)sum=`expr $sum / $n`
			 echo "Div = "$sum;;
		5) exit;;
		6)sum=0
			echo "You reset total value";;
		*)echo "Invalid choice";;
	esac
done
