#!/bin/bash
# set -x uncomment if you want to run the script in debug mode

#############################
#### AUTHOR: UKPABI PETER UCHENNA

#### DATE:   26th December 2024

#### DESCRIPTION : script that does a variety of things

#### REASON : Just playing around with shell scripting

#### USEFUL NOTE : all new commands are separated by spaces, uncomment any command you want to try, except from anywhere you see not part of the script, feel free to modify


#############################

#this command prints out the content of the  PATH specified in ()
# echo "files in pwd: $(ls /home/engr_king/script)"


#this command prints out the exit code of the previous command
# echo $?




#this command prints out the content of the specified file
# cat /home/engr_king/script/script.sh
# echo $?



# touch /home/engr_king/script/file1




#condition below checks if file exists
# if [ -e file1 ];then
# echo "file  exists"
# else echo "file does not exist"
# fi


# the for loop is used to iterate over the variable
# NAMES="Cain Abel Seth"
# for name in $NAMES
# do 
# echo "hello $name"
#  output hello Cain, not part of the script will throw error if you uncomment
#  hello Abel          ,, ,, ,, ,, ,, ,, ,,
#  hello Seth          ,, ,, ,, ,, ,, ,, ,,
# done



# the for loop is used to iterate over the variable and another flavor for working with arrays
# NAMES=("Cain" "Abel" "Seth")
# for name in ${NAMES[@]}
# do 
# echo "hello $name"
# #  output hello Cain, not part of the script will throw error if you uncomment
# #  hello Abel          ,, ,, ,, ,, ,, ,, ,,
# #  hello Seth          ,, ,, ,, ,, ,, ,, ,,
# done



#this command lists the content of the pwd and then renames it  with the value in the NEW variable don't run this command if you have files you don't intend to rename
# FILES=$(ls)
# NEW="new"
# for FILE in $FILES
# do 
# echo "renaming $FILE to new-$FILE"
# mv $FILE $NEW-$FILE
# done




#this command prompts a user for his name and outputs the value he provides
# read -p "what is your name :" NAME
# echo "my name is $NAME"




#this is a case statement an alternative to using multiple if and if/else
# read -p "are you a Devops Engr :" ANSWER
# case "$ANSWER" in 
# [Yy] | [Yy][Ee][Ss])
# echo "You can work here"
# ;;
# [Nn] | [Nn][Oo])
# echo "sorry go to the other office"
# ;;
# *)
# echo "you are not supposed to be around here"
# ;;
# esac




#this command reads through a file, number the file's content and print out the content of the file
# LINE=1
# while read -r CURRENT_LINE
#  do 
#   echo "$LINE : $CURRENT_LINE"
#   ((LINE++))
# done < "./textfile.txt"





#this function creates new dir, new file and writes to the file
# create(){
#     mkdir newdir
#     touch "newdir/dirfile.txt"
#     echo "this dir, file and file content are coming from this create function">> "newdir/dirfile.txt"
# }
# create





#this command checks the exit code of the function i.e if the function executed or not
# if [ $? ];then
# echo "function worked"
# else 
# echo "function did not execute"
# fi

#this command will create 100 files at once
# touch file{001..100}.txt

#removing the multiple files created above
# rm  file{001..100}.txt





#this command will create a symbolic link or symlink for short
# ln -s PATH/TO/DIR "LINKNAME"


# this command reads a user's input and greets the user based on the provided input
# read -p "what is your name : " NAME
# echo "hello $NAME!, welcome to the shell scripting world"



# calculator
# read -p "enter first number " FIRST
# read -p "enter arithmetic sign " SIGN
# read -p "enter second number " SECOND
# #static approach, used for a simple basic calculator only support for addition

# RESULT=$((FIRST + SECOND))
# echo "the result of adding $FIRST + $SECOND is : "$RESULT


# read -p "enter first number " FIRST
# read -p "enter arithmetic sign " SIGN
# read -p "enter second number " SECOND
# result=""

# dynamic approach for a basic calculator

# if [ "$SIGN" == "+" ]; then 

# result=$((FIRST + SECOND))
# echo "the result of the operation $FIRST + $SECOND is :" $result

# elif [ "$SIGN" == "-" ]; then
#  result=$((FIRST - SECOND))
# echo "the result of the operation $FIRST - $SECOND is :" $result

# elif [ "$SIGN" == "*" ]; then
#  result=$((FIRST * SECOND))
# echo "the result of the operation $FIRST * $SECOND is :" $result

# elif [ "$SIGN" == "/" ]; then
#  result=$((FIRST / SECOND))
# echo "the result of the operation $FIRST / $SECOND is :" $result
# fi



# creating a simple basic calculator using if logic
# echo "enter first number"
# read num1
# echo "Enter second number"
# read num2
# echo "choose an operation (+, -, /, *)."
# read operator


# using if condition 
# if [ $operator == "+" ]; then
# result=$((num1 + num2))
# echo "result : $num1 + $num2 =$result"
# fi


# using case statement to create a basic calculator
# case $operator in
# +)
# result=$((num1 + num2))
# echo "result : $num1 + $num2 =$result"
# ;;

# -)
# result=$((num1 - num2))
# echo "result : $num1 - $num2 =$result"
# ;;
# /)
# if [ $num2 -ne 0]; then
# result=$((num1 / num2))
# echo "result : $num1 / $num2 =$result"
# else 
# echo "Error: division by 0 is not allowed"
# fi
# ;;

# \*)
# result=$((num1 * num2))
# echo "result : $num1 * num2 =$result"
# ;;

# *)
# echo "please enter a valid operation like (+, -, /, *)"
# ;;
# esac


# this command takes an input from a user checks if the file exists and creates it if it doesn't
# read -p"enter a file name : " FILE
# if [ -e $FILE ];then
# echo "The File exists"
# else
# echo "The file does not exist"
# read -p "do you want to create it? answer yes  or no: " CREATE
# if [ "$CREATE" == "yes" ];then
# echo "creating $FILE..."
# touch $FILE
# echo "created $FILE"
# else 
# echo "exiting"
# fi
# fi

# listing the content of a directory and counting the number of files in it
# echo $(ls )
# echo $(ls | wc -l )


# using a for loop to generate numbers from 1 through 10
# num="1 2 3 4 5 6 7 8 9 10"
# for numbers in $num
# do 
# echo $((numbers++))
# done

#using a while loop to generate number from 1 through 10
# num=1
# numb=10
# while [ $num -le $numb ];
# do 
# echo $((num++))
# done

# create a sequence of numbers from 1 through 10
# seq 1 10


#checks if a number is even or odd enhance it by checking if the number is a prime number
# read -p "enter a number to check :" NUMBER
# result=$(("NUMBER" % "2"))
# if [ $result == 1 ];then
# echo "$NUMBER is an odd number"
# elif (( "$result" == "0"));then
# echo "$NUMBER is an even number"
# else 
# echo "Invalid operation, please enter a number and it should be greater than 0"
# fi
#same as above but using case statement
# read -p "enter a number to check :" NUMBER
# result=$(("NUMBER" % 2))
# case $result in
# 1)
# echo "$NUMBER is an odd Number"
# ;;

# 0)
# echo "$NUMBER is an even Number"
# ;;
# *)
# echo "Invalid operation, please enter a number and it should be greater than 0"
# ;;
# esac


# basic menu driven program
# write a script that displays a simple menu with options to 
# view the current date and time
# display the current working  directory
# display the list of files in the current directory  the script should 
# present a numbered list of options, allow the user to choose an option
# execute the corresponding action based on the user's choice   



#interacting with users 

# echo "what do you want to do?"
# echo "1. view the current date and time"
# echo "2. Display/list the current working directory"
# echo "3. Display/list the files in the current directory"
# echo "4. view the logged in user"
# echo "5. view the id of the logged in user"
# echo "6. know how long the system has been online"
# echo "7. view the group of the logged in user"
# read -p "Pick a number or press cancel to close :" CHOICE
# if (( "$CHOICE" == 1));then
# echo "the current date and time is $(date)"
# elif (( "$CHOICE" == 2));then
# echo "the current working directory is $(pwd)"
# elif (( $CHOICE == 3));then
# echo "these are the files in the current directory"
# echo  $(ls)
# elif (( $CHOICE == 4));then
# echo "the logged in user is $(whoami)"
# elif (( $CHOICE == 5));then
# echo "the id of the logged in user is $(id)"
# elif (( $CHOICE == 6));then
# echo "the system has been online since $(uptime -s)"
# elif (( $CHOICE == 7));then
# echo "the group of the logged in user is $(groups) "
# elif (( $CHOICE == "cancel"));then
# $(exit)
# else 
# echo "sorry the number you picked is not in the list of available numbers"
# fi


