#Belirli Bir Dizindeki En Büyük Dosyayı Bulma


#!/bin/sh
dizin="belirli_dizin"
en_buyuk_dosya=""
en_buyuk_boyut=0

for dosya in $dizin/*; do
    if [ -f "$dosya" ]; then
        boyut=$(du -b "$dosya" | awk '{print $1}')
        if [ $boyut -gt $en_buyuk_boyut ]; then
            en_buyuk_boyut=$boyut
            en_buyuk_dosya=$dosya
        fi
    fi
done

echo "En büyük dosya: $en_buyuk_dosya, Boyut: $en_buyuk_boyut byte"

