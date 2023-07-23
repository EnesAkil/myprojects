#Sistemde Çalışan Belirli Bir Süreci Otomatik Olarak İzleme:


#!/bin/sh
süreç_adi="izlenen_süreç"

while true; do
    if pgrep "$süreç_adi" > /dev/null; then
        echo "Süreç çalışıyor."
        sleep 5
    else
        echo "Süreç sona erdi."
        break
    fi
done

