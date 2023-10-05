#!/bin/bash

read -p "Vize notunu girin: " vize
read -p "Final notunu girin: " final

ortalama=$(echo "scale=2; ($vize + $final) / 2" | bc)

if (( $(echo "$ortalama >= 90" | bc -l) )); then
    harf_notu="AA"
elif (( $(echo "$ortalama >= 85" | bc -l) )); then
    harf_notu="BA"
elif (( $(echo "$ortalama >= 80" | bc -l) )); then
    harf_notu="BB"
elif (( $(echo "$ortalama >= 75" | bc -l) )); then
    harf_notu="CB"
elif (( $(echo "$ortalama >= 70" | bc -l) )); then
    harf_notu="CC"
elif (( $(echo "$ortalama >= 65" | bc -l) )); then
    harf_notu="DC"
elif (( $(echo "$ortalama >= 60" | bc -l) )); then
    harf_notu="DD"
else
    harf_notu="FF"
fi

echo "Ortalama: $ortalama"
echo "Harf Notu: $harf_notu"