#Bir Metin Dosyasındaki En Sık Kullanılan Kelimeleri Bulma:


#!/bin/sh
dosya="metin.txt"

if [ -f "$dosya" ]; then
    cat "$dosya" | tr -c '[:alnum:]' '[\n*]' | awk '{print tolower($0)}' | \
        sort | uniq -c | sort -nr | head -n 5
else
    echo "Dosya bulunamadı."
fi

