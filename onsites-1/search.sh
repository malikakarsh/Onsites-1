#!/bin/bash

read -p "Enter the column name along with the matching word to search eg. 'Roll: 1' " entry
arr=($entry)
grep "\<${arr[1]}" output.txt