#!/bin/bash

if [ -x $1 ]
then
  echo 'this file is executable'
else
  echo 'this file is not executable'
fi