#!/bin/bash

if command -v sshpass &> /dev/null; then
    sshpass -p 'morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj' ssh -T -o StrictHostKeyChecking=no -p 2220 bandit7@bandit.labs.overthewire.org 2> /dev/null << 'EOF'
awk '/millionth/' data.txt | awk '{print $2}'
EOF
else
    ssh -T -o StrictHostKeyChecking=no bandit7@bandit.labs.overthewire.org -p 2220 2> /dev/null << 'EOF'
awk '/millionth/' data.txt | awk '{print $2}'
EOF
fi
