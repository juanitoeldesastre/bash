#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p '2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ' ssh -o StrictHostKeyChecking=no bandit4@bandit.labs.overthewire.org -p 2220 'cat $(find . -name -file07)' 2>/dev/null
else
    ssh bandit4@bandit.labs.overthewire.org -p 2220 << EOF
cat $(find . -name -file07)
EOF
fi
