#!/bin/bash

read -p "İsminizi giriniz : " isim
read -p "Yaşınızı giriniz : " yas
read -p "Kaç yıl yaşamayı düşünüyorsunuz : " ale

if [[ $yas -lt 18 ]]
then
    echo "Şu an öğrenci olmalısınız."
    echo "Reşit olup çalışabilmeniz için daha $(expr 18 - $yas) yıl var."
elif [[ 18 -le $yas && $yas -lt 65 ]]
then
    echo "Çalışacak yaştasınız."
    echo "Emekliliğinize $(expr 65 - $yas) yıl var."
elif [[ $yas -ge 65 ]]
then
    if [[ $yas -lt $ale ]]; then
        echo "Emekliliğinizde sağlıklı yıllar dileriz."
    fi
    echo "Ölmek için daha $(expr $ale - $yas) yılınız var."
else
    echo -e '\a'
    echo "Mekanınız cennet olsun."
    sleep 1
    echo "Allah taksiratınızı affetsin."
    sleep 2
    echo "Git artık!!"
fi
