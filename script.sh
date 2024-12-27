#!/bin/bash
# set -x

#Note all new commands are separated by spaces, uncomment any command you want to try, except from anywhere you see not part of the script


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



#this command lists the content of the pwd and then renames it  with the value in the NEW variable
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




#this command reads through a file, number the file and print out the content of the file
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
# rm  file{001..100}.txt





#this command will create a symbolink or symlink
# ln -s PATH/TO/DIR "LINKNAME"
