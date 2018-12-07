#!/bin/bash

printf "Please enter a letter of the alphabet:"

read letter

case $letter in
  "a")
    echo "vowel";;
  "e")
    echo "vowel";;
  "i")
    echo "vowel";;
  "o")
    echo "vowel";;
  "u")
    echo "vowel";;
  "y")
    echo "vowel";;
  *)
    echo "consonant";;
  esac