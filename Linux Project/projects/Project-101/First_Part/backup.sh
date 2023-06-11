#!/bin/bash
cat event_history.csv | grep -i serdar | grep TerminateInstances > test.txt
cut -d, -f10 test.txt > deneme.txt 
cut -d, -f14 test.txt >> deneme.txt
cut -d, -f16 test.txt >> deneme.txt
cat deneme.txt | grep resourceName > deneme.txt
cut -c20-38 deneme.txt > result.txt
