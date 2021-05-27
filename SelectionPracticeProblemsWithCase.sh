#! /bin/bash -x

#Problem 1: Read a single digt number and print in words using Case Statements
numberInWords(){
	echo "Enter the single digit number : "
	read number
	case $number in
   		0)
      			echo "$number in words is zero"
      			;;
   		1)
      			echo "$number in words is one"
      			;;
   		2)
       			echo "$number in words is two"
      			;;
   		3)
      			echo "$number in words is three"
      			;;
   		4)
      			echo "$number in words is four"
      			;;
   		5)
       			echo "$number in words is five"
      			;;
   		6)
       			echo "$number in words is six"
      			;;
   		7)
      			echo "$number in words is seven"
      			;;
   		8)
      			echo "$number in words is eight"
      			;;
   		9)
       			echo "$number in words is nine"
      			;;
   		*)
     			echo "Invalid Input,Please Enter Single Digit Number"
     			;;
	esac
}
numberInWords


#Problem 6: Read a number and display week day using Case:

weekDay(){
	echo "Press number between  1 to 7 to get day of the week,starting day of week is from Sunday"
	read day
	case $day in
   		1)
      			echo "The day of the week is Sunday"
      			;;
   		2)
       			echo "The day of the week is Monday"
      			;;
   		3)
      			echo "The day of the week is Tuesday"
      			;;
   		4)
      			echo "The day of the week is Wednesday"
      			;;
   		5)
       			echo "The day of the week is Thursday"
      			;;
   		6)
       			echo "The day of the week is Friday"
      			;;
   		7)
      			echo "The day of the week is Saturday"
      			;;
   		*)
     			echo "Invalid Input,Please Enter the Number between 1 to 7"
     			;;
	esac
}
weekDay


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
