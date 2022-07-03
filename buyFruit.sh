shopt -s nocasematch
echo "============ Welcome to Fruit Shop  =========="
echo "Select your choice buy|quit"
read choice

while true 
do 

if [[ $choice == b ]] || [[ $choice == Buy ]] 
then 
echo ""

else 
[[ $choice == q ]] || [[ $choice == Quit ]]
echo "has a great day!"
exit 0
fi

Name_Funtion(){
echo "write you name please "
read name
if [[ $name =~ ^[a-z]+$ ]] || [[ $name =~ ^[A-Z]+$ ]]
then
echo "Thank you"
else 
echo "please try again"
read name
fi
}
Name_Funtion

Telephone_number() {
echo "write your phone number "
read number
if [[ $number =~ ^[0-9]+$ ]]
then
echo "Phone number accepted"
else 
echo "Those digits are not correct, please try again "
read number
fi
}
Telephone_number

Fruit_Selection() {
PS3='Select you choice: '
options=("Apple" "bannana" "Orange" "reciept" "Exit")

	select opt in "${options[@]}"
	do
	case $opt in 
	"Apple")
	while true
	do
	echo "How many kilos of apples would you like? "
	read quantityA
	((TotalpriceA=quantityA*3))
	if [[ $quantityA -lt 1 ]] && [[ $quantityA =~ ^[0-9]+$ ]]
	then
	echo "The minimum order is 1, please try again"
	read quantityA
	else
	echo "the price would be $quantityA x 3£ = $TotalpriceA £" 
	echo "---------------------------------------------------"
	break
	fi
	done
	;;
	"bannana")
	while true
	do
	echo "How many kilos of bannana would you like? "
	read quantityB
	((TotalpriceB=quantityB*2))
	if [[ $quantityB -lt 1 ]]
	then
	echo "The minimum order is 1, please try again"
	read quantityB
	else
	echo "the price would be $quantityB x 2£ = $TotalpriceB £" 
	echo "---------------------------------------------------"
	break
	fi
	done 
	;;
	"Orange")
	while true
	do
	echo "How many kilos of Orange would you like? "
	read quantityO
	((TotalpriceO=quantityO*5))
	if [[ $quantityO -lt 1 ]]
	then
	echo "The minimum order is 1, please try again"
	read quantityO
	else
	echo "the price would be $quantityO x 5£ = $TotalpriceO £" 
	echo "---------------------------------------------------"
	break
	fi
	done
	;;
	"Reciept")
	break
	;;
	"Exit")
	exit 0
	;;
	*)
	echo "Invalid input, please try again "
	esac
	done
	}
	Fruit_Selection

Reciept_Funtion(){
echo "================================================="
echo "Hi $name,the reciept of your order:  "
currentDate=`date`
echo $currentDate
echo "_________________________________________________"
echo "Your telephone number is $number "
 #-----------------------------------------------
if [[ $TotalpriceA -lt 0 ]]
then
echo "You have not made any purchases of apples "
else [[ $TotalpriceA -lt 1 ]] 
echo "The total price of apples that you have bought is $(($TotalpriceA))"
fi
 #----------------------------------------------
if [[ $TotalpriceB -lt 0 ]]
then
echo "You have not made any purchases of bannanas "
else [[ $TotalpriceB -lt 1 ]] 
echo "The total price of bannanas that you have bought is $(($TotalpriceB))"
fi
 #----------------------------------------------
if [[ $TotalpriceO -lt 0 ]]
then
echo "You have not made any purchases of oranges "
else [[ $TotalpriceO -lt 1 ]] 
echo "The total price of oranges that you have bought is $(($TotalpriceO))"
fi
 #----------------------------------------------
}
Reciept_Funtion

Final_Funtion(){
echo "=========================================================="
echo "Would you like to create another order? Please enter your choice buy|quit"
read choice

if [[ $choice == b ]] || [[ $choice == buy ]] 
then 
echo ""
return

else 
[[ $choice == q ]] || [[ $choice == quit ]]
echo "have a great day!"
exit 0
fi
}
Final_Funtion

done