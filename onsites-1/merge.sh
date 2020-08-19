#!/bin/bash

while IFS= read -r line || [ -n "$line" ];
do
  array=($line)
  awk -v mat1=${array[0]} -v mat2=${array[1]} -v mat3=${array[2]} ' mat3==$1 {print mat1," ",mat2," ",mat3," ",$2}' file2.txt >> file4.txt
done < file1.txt

while IFS= read -r line1 || [ -n "$line1" ];
do
  array1=($line1)
  awk -v mat1=${array1[0]} -v mat2=${array1[1]} -v mat3=${array1[2]} ' $2==mat1 {print $1," ",$2," ",$3," ",$4," ",mat2," ",mat3}' file4.txt >> output.txt
done < file3.txt

rm -r file4.txt