#!/bin/bash

grep "invalid user" auth.log | cut -d' ' -f9 | uniq -c > invalid_user.sh
grep "invalid user" auth.log | cut -d' ' -f10 | uniq -c >> invalid_user.sh
cat invalid_user.sh | grep -v "from" | grep -v "user" | grep -v "for" | grep -v "invalid" | grep -v "[preauth]" > invalid_user.txt
