#! /bin/bash

#Problem 1:Read a single digit number and write a number in word
numberInWords(){
	echo "Enter the number"
	read number
	if [ $number -eq 0 ]
	then
		echo "$number in words is ZERO"
	elif [ $number -eq 1 ]
	then
		echo "$number in words is ONE"
	elif [ $number -eq 2 ]
	then
        	echo "$number in words is TWO"
	elif [ $number -eq 3 ]
	then
        	echo "$number in words is THREE"
	elif [ $number -eq 4 ]
	then
        	echo "$number in words is FOUR"
	elif [ $number -eq 5 ]
	then
       		echo "$number in words is FIVE"
	elif [ $number -eq 6 ]
	then
        	echo "$number in words is SIX"
	elif [ $number -eq 7 ]
	then
        	echo "$number in words is SEVEN"
	elif [ $number -eq 8 ]
	then
        	echo "$number in words is EIGHT"
	elif [ $number -eq 9 ]
	then
        	echo "$number in words is NINE"
	else
		echo "INVALID INPUT"

	fi
}
numberInWords


#Problem2:Read a number and display a week day(sunday,monday..)
weekDays(){
	echo "Select the number from 1 to 7:"
	read value
	if [ $value -eq 1 ]
	then
        	echo "The day is SUNDAY"
	elif [ $value -eq 2 ]
	then
        	echo "The day is MONDAY"
	elif [ $value -eq 3 ]
	then
        	echo "The day is TUESDAY"
	elif [ $value -eq 4 ]
	then
        	echo "The day is WEDNESDAY"
	elif [ $value -eq 5 ]
	then
        	echo "The day is THURSDAY"
	elif [ $value -eq 6 ]
	then
        	echo "The day is FRIDAY"
	elif [ $value -eq 7 ]
	then
        	echo "The day is SATURDAY"
	else
		echo "INVALID INPUT,Press between 1 to 7"
	fi
}
weekDays


#Problem 3: Read number prints its units,tens,hundred place
decimalPlace(){
	echo "Enter the number withing upto 9999"
	read value
	if [ $value -lt 10000 ]
	then
        	units=`expr $value % 10`
        	tens=`expr $(( $value / 10 )) % 10`
        	#echo $units $tens
        	hundreds=`expr $(( $value / 100 )) % 10`
        	thousands=`expr $value / 1000`
        	echo "Units place = $units"
        	echo "Tens place = $tens"
        	echo "Hundreds place = $hundreds"
        	echo "Thousands place = $thousands"
	else
        	echo "Invalid Input,please input value upto 9999"
	fi
}
decimalPlace

#Problem 4:Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum
#1. a + b * c         3. c + a / b
#2. a % b + c         4. a * b + c

arithmeticOperations(){
	echo "Enter three numbers : "
	read a
	read b
	read c
	value1=`echo "$a + $b * $c" | bc`
	value2=`echo "$a % $b + $c" | bc`
	value3=`echo "$c + $a / $b" | bc`
	value4=`echo "$a * $b + $c" | bc`
	echo "a + b * c = $value1"
	echo "a % b + c = $value2"
	echo "c + a / b = $value3"
	echo "a * b + c = $value4"
	arr=($value1 $value2 $value3 $value4)
	#echo ${arr[*]}"
	max=0
	min=$value1
	for(( i=0;i<${#arr[*]};i++ ))
	do
        	if [ $max -le ${arr[$i]} ]
        	then
                	max=${arr[$i]}
        	elif [ $min -gt ${arr[$i]} ]
        	then
                	min=${arr[$i]}
        	fi
	done
	echo "The maximum value is $max"
	echo "The minimum value is $min"
}
arithmeticOperations
