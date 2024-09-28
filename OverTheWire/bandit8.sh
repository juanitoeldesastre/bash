#!/bin/bash

if command -v sshpass &> /dev/null; then
    sshpass -p 'dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc' ssh -T -o StrictHostKeyChecking=no -p 2220 bandit8@bandit.labs.overthewire.org 2> /dev/null << 'EOF'
sort data.txt | uniq -u
EOF
else
    ssh -T -o StrictHostKeyChecking=no bandit8@bandit.labs.overthewire.org -p 2220 2> /dev/null << 'EOF'
sort data.txt | uniq -u
EOF
fi
