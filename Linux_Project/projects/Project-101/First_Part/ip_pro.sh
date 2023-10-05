#!/bin/bash

cat event_history.csv | grep serdar | grep -i Terminateinstance | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq | tee Result_pro.txt
