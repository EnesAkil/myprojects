#Kullanıcıdan Sayıları Alan ve Toplamını Hesaplayan Bir Program:


#!/bin/sh
toplam=0

while true; do
    echo "Sayı girin (Çıkmak için 'q' tuşuna basın): "
    read sayi

    if [ "$sayi" = "q" ]; then
        break
    fi

    if ! echo "$sayi" | grep -qE '^[0-9]+$'; then
        echo "Geçersiz bir sayı girdiniz. Tekrar deneyin."
        continue
    fi

    toplam=$((toplam + sayi))
done

echo "Girilen sayıların toplamı: $toplam"

