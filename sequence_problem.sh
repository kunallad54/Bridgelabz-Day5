#! /bin/bash -x

#Problem 1: Use Random Function to get Single Digit
echo "The single digit random number is $((RANDOM%10))";

#Problem 2: Use Random Function to get Dice Number between 1 to 6:
echo "The random dice number from 1 to 6 is $((RANDOM%6 +1))";

#Problem 3 : Add two Random Dice Numbers and print result:
addRandomNum(){
	a=$((RANDOM%6 +1))
	echo "The first random number is $a"
	b=$((RANDOM%6 +1))
	echo "The second random number is $b"
	result=$(($a + $b))
	echo "The addition of two random dice number is $result"
}
addRandomNum

#Problem 4: Read 5 Random 2 Digit Values,find their sum and Average:
randomSumAndAverage(){
	sum=0;
	average=0;
	count=0;
	maxCount=5
	while [ $count -lt $maxCount ]
	do
		number[$count]=$((RANDOM%99 +10))
		sum=$((sum + number[$count]))
		let "count += 1"
	done
	echo "The five random numbers are :\n"
	echo "${number[*]}"
	echo "The sum is $sum"
	average=$((sum/maxCount))
	echo "The average is $average"
}
randomSumAndAverage

#Problem 5 : Unit Conversion:
#Problem A: Foot to inch
unitConversion(){
	echo "To convert from foot to inch press 0 or from inch to foot press 1"
	read number
	if [ $number -eq 0 ]
	then
		echo "Enter the value in foots: "
		read foot
		echo "The value of $foot ft in inches is: "
		echo "scale=3;$foot*12" | bc
	elif [ $number -eq 1 ]
	then
		echo "Enter the value in inches: "
		read inch
		echo "The value of $inch inch in foot is: "
		echo "scale=2;$inch/12" | bc
	else
		echo "Invalid Input,Press 0 or 1"
	fi

	#Problem B:Rectangular Plot of 60X40 feet in meters
	echo "Enter the length of rectangle in feet:"
	read length
	echo "Enter the Breadth of rectangle in feets:"
	read breadth
	areaOfRectangle=$((length*breadth))
	echo "The area of rectangles in feets is $areaOfRectangle"
	echo "The area of rectangle in meters is: "
	a=0.3048
	echo "$areaOfRectangle * $a" | bc

	#Problem C: Area of 25 such plots in acres
	totalArea=$((25*areaOfRectangle))
	areaInMeters=`echo "$totalArea * $a" | bc`
	squareFoot=$((totalArea * totalArea))
	echo "The area in squareFoot is $squareFoot"
	b=0.0000229568
	acresConversion=`echo "$squareFoot * $b " | bc`
	echo "The area in acres is $acresConversion"
	echo "The area of 25 such plots in feets is: $totalArea"
	echo "The area of 25 such flats in meters is: $areaInMeters"
}
unitConversion
