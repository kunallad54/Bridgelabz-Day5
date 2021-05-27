#! /bin/bash -x

#Problem 1: Read 5 Random 3 digit values and then outputs the minimum and maximum value
randomMinMax(){
	MAXVALUE=5
	count=0
	maxNumber=0
	minNumber=1000
	while [ $count -lt $MAXVALUE ]
	do
		number[$count]=$((RANDOM%899 + 100))
		if [ $maxNumber -lt ${number[$count]} ]
		then
			let "maxNumber = ${number[$count]}"
		fi
		if [ $minNumber -gt ${number[$count]} ]
		then
			let "minNumber = ${number[$count]}"
		fi
		let "count += 1"
	done
	echo "${number[*]}"
	echo "The maximum value is $maxNumber"
	echo "The minimum value is $minNumber"
}
randomMinMax

#Problem 2: Take day and month from command line and print true if day of month is between March 20 and June 20
dayMonthCheck(){
	echo "Enter the date:"
	read date
	echo "Enter the month"
	read month
	if (( ($month <= 6 && $date <= 20) && (($month >= 3 && $date <= 20) && ($date<31)) ))
	then
        	echo $month $date "True";
	else
		echo "False";
	fi
}
dayMonthCheck

#Problem 3: leap Year
leapYear(){
	echo -n "Enter the Year(YYYY) :"
	read year
	a=`expr $year % 4`
	b=`expr $year % 100`
	c=`expr $year % 400`
	if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
	then
		echo "$year is a leap year"
	else
		echo "$year is not a leap year"
	fi
}
leapYear

#problem 4: Random coin flip

coinFlip(){
	coinFlip=$((RANDOM%2))
	echo $coinFlip
	if [ $coinFlip -eq 0 ]
	then
		echo "It is heads"
	else
		echo "It is tails"
	fi
}
coinFlip
