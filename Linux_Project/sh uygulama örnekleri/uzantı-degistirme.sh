#Belirli Bir Dizindeki Tüm Dosyaların Uzantılarını Değiştirme:


#!/bin/sh
dizin="belirli_dizin"
yeni_uzanti="yeni_uzanti"

for dosya in $dizin/*; do
    if [ -f "$dosya" ]; then
        dosya_ad=$(basename "$dosya")
        yeni_ad="${dosya_ad%.*}.$yeni_uzanti"
        mv "$dosya" "$dizin/$yeni_ad"
    fi
done

echo "Dosya uzantıları değiştirildi."

