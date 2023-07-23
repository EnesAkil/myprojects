#Komut Satırı Argümanlarını Kontrol Etme ve İşleme:
#sh


#!/bin/sh
if [ $# -lt 2 ]; then
    echo "En az 2 argüman gereklidir."
    exit 1
fi

ilk=$1
ikinci=$2

echo "İlk argüman: $ilk"
echo "İkinci argüman: $ikinci"

if [ "$ilk" = "$ikinci" ]; then
    echo "İki argüman eşittir."
else
    echo "İki argüman eşit değildir."
fi
