#!/bin/bash

echo "Please write in an animal: "

read animal

case $animal in
  "dog")
    echo "Woof woof";;
  "cat")
    echo "Meow";;
  "bird")
    echo "Tweet tweet";;
  "horse")
    echo "Neigh";;
  *)
    echo "What does the fox say?";;
  esac