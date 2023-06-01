#!/bin/bash

read -p "Dosya ismini girinize : " dosya_adi

if [ -e "$dosya_adi" ]
then
 echo "Aynı isimle başka bir dosya mevcuttur."
 cat $dosya_adi
else
touch "$dosya_adi"
 echo " $dosya_adi isimli dosya oluşturuldu."
fi