#!/bin/bash

if command -v sshpass &> /dev/null; then
    sshpass -p '4CKMh1JI91bUIZZPXDqGanal4xvAg0JM' ssh -T -o StrictHostKeyChecking=no -p 2220 bandit9@bandit.labs.overthewire.org 2> /dev/null << 'EOF'
s4vitar=1; strings data.txt | grep "===" | while read line; do
    echo "Línea $s4vitar: $line"
    let s4vitar+=1
done | awk 'NR==4' | awk 'NF{print $NF}'
EOF
else
    ssh -T -o StrictHostKeyChecking=no bandit9@bandit.labs.overthewire.org -p 2220 2> /dev/null << 'EOF'
s4vitar=1; strings data.txt | grep "===" | while read line; do
    echo "Línea $s4vitar: $line"
    let s4vitar+=1
done | awk 'NR==4' | awk 'NF{print $NF}'
EOF
fi
