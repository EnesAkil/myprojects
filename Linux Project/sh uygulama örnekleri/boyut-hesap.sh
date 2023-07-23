#Dizin içindeki dosyaları listeleme ve boyutlarını hesaplama


#!/bin/sh
dizin="belirli_dizin"
toplam_boyut=0

for dosya in $dizin/*; do
    if [ -f "$dosya" ]; then
        boyut=$(du -b "$dosya" | awk '{print $1}')
        echo "Dosya: $dosya, Boyut: $boyut byte"
        toplam_boyut=$((toplam_boyut + boyut))
    fi
done

echo "Toplam Dizin Boyutu: $toplam_boyut byte"
