****** 1'den 10'a kadar sayıları yazdırma****

#!/bin/bash

number=1

while [[ $number -le 10  ]]
do
  echo $number
  ((number++))
done
echo "Now, number is $number"



---------

num=1
while [ $num -le 10 ]; do
    echo $num
    num=$((num+1))
done



 ** İlk iki kod son satıra 11 yazıdırı. **
 ------------

#!/bin/bash

number=1

until [[ $number -ge 10  ]]
do
  echo $number
  ((number++))
done
echo "Now, number is $number"

*** bu kod until ile yazıldığı için son satırda 10 yazar **
----------------




***** For ile dosya içine bir şeyler yazdırma ya da klasöre dosya atama ****

#!/bin/bash

echo "Numbers:"

for number in 0 1 2 3 4 5 6 7 8 9
do
   echo $number
done

echo "Names:"

for name in Joe David Matt John Timothy
do
   echo $name
done

echo "Files in current folder:"

for file in `pwd`/*
do
   echo $file
done


---------------


#!/bin/bash

# 0'dan 9'a kadar olan sayılar listesi
numbers=(0 1 2 3 4 5 6 7 8 9)

# İsimler listesi
names=("Joe" "David" "Matt" "John" "Timothy")

# Geçerli klasördeki dosyaların listesi
files=(*)

# Sayıları listele
echo "Numbers:"
for num in "${numbers[@]}"; do
    echo "$num"
done

# İsimleri listele
echo "Names:"
for name in "${names[@]}"; do
    echo "$name"
done

# Dosya yollarını listele
echo "Files in current folder:"
for file in "${files[@]}"; do
    echo "$file"
done


-------------------------

*********** until ile loop **********

#!/bin/bash

number=1

until [[ $number -lt 1  ]]
do
  echo $number
  ((number++))
done
echo "Now, number is $number"

-------------------------

*********** Continue statement ***************

#!/bin/bash

number=1

until [[ $number -lt 1  ]]
do
  ((number++))
  
  tens=$(($number % 10))
  
  if [[ $tens -eq 0 ]]
  then
    continue
  fi

  echo $number
    
  if [[ $number -gt 100 ]]
  then
    break
  fi
done

------------------------

#!/bin/bash

read -p "Input first number: " first_number
read -p "Input second number: " second_number

PS3="Select the operation: "

select operation in addition subtraction multiplication division exit
do
  case $operation in
    addition) 
      echo "result= $(( $first_number + $second_number))"
    ;;
    subtraction)
       echo "result= $(( $first_number - $second_number))"
    ;;
    multiplication)
       echo "result= $(( $first_number * $second_number))" 
       ;;
    division)
       echo "result= $(( $first_number / $second_number))"
    ;;
    exit)
       break
    ;;   
    *)
       echo "Wrong choice..." 
    ;;
  esac
done





