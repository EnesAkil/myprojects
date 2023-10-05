#Belirli Bir Dizindeki Alt Dizinlerdeki Dosyaları Toplam Boyutunu Hesaplama:


#!/bin/sh
ana_dizin="ana_dizin"
toplam_boyut=0

find "$ana_dizin" -type f | while read -r dosya; do
    boyut=$(du -b "$dosya" | awk '{print $1}')
    toplam_boyut=$((toplam_boyut + boyut))
done

echo "Alt dizinlerdeki dosyaların toplam boyutu: $toplam_boyut byte"

