!#/bin/bash

# example of until

until [[  $number -lt 1 ]]; do
  echo "The current number is $number"
  number=`expr $number - 1`
done

echo "Done!"
exit 0

# example of for loop

for fruit in apples oranges bananas grapes guava figs
  do  
    if [ $fruit = 'bananas' ]
      then 
        echo "Ooh... can we make banana bread?"
      else
        echo "I like eating $fruit"
      fi
  done

# example of break statement

  number=10
  while [[ $number -gt 0 ]]; do   
    echo "The current number is $number"
    if [ $number -eq 4 ]; then
      echo "I'm tired of counting. I'm going to stop at $number"
      break
    else
      number=`expr $number - 1`
    fi
  done
  echo "We're done"
  exit 0

# Create a program that stores a value between 1 and 10. 
# Ask the user to guess the stored value. 
# Use a while or until loop to keep asking for the a guess. 
# Once the user guesses correctly, exit the program.
  num=6
  read -p 'Please enter a random number from 1 - 10 ' guess
  until [[ $guess -eq $num ]]; do 
    read -p "Sorry, $guess isn't the number, guess again " guess
  done
  echo "You got it! $guess is equal to $num"
  exit 0

function example
epic_characters () {
  echo I am $1
}

epic_characters Beowulf
epic_characters Grendel

function example with two variables
  epic_characters () {
  echo I am $1 the $2!
}

epic_characters Beowulf hero
epic_characters Grendel monster

# Setting a return status for a function

print_something () {
  echo Hello $1
  return 5
}

print_something Beowulf
print_something Grendel
echo The previous function has a return value of $?

# Create a wrapper around the command ls

ls () {
  command ls -lh
}
ls

# select example with exit
select kingdom in North Vale Stormlands Reach Westerlands  "Iron Islands" Dorne exit
do
  if [[ "$kingdom"="exit" ]]; then
    echo "Exiting..."
    exit 0
  else
    echo "You chose $kingdom"
  fi
done

# choose your fruit
PS3="What's your favorite fruit? Choose from above"
fruit_array=(apples pears grapes plums bananas oranges exit)
select fruit in ${fruit_array[@]}
do 
  if [[ $fruit = "exit" ]]; then
    echo "Exiting"
    exit 0
  else 
    echo "You chose $fruit"
  fi
done


