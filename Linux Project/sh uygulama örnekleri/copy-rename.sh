#Belirli Bir Dizindeki Dosyaları Farklı Bir Dizine Kopyalama ve Yeniden Adlandırma:


#!/bin/sh
kaynak_dizin="kaynak_dizin"
hedef_dizin="hedef_dizin"

for dosya in $kaynak_dizin/*; do
    if [ -f "$dosya" ]; then
        dosya_ad=$(basename "$dosya")
        yeni_ad="${dosya_ad%.*}_kopya.${dosya_ad##*.}"
        cp "$dosya" "$hedef_dizin/$yeni_ad"
    fi
done

echo "Dosyalar kopyalandı ve yeniden adlandırıldı."

