#!/bin/bash

if command -v sshpass &> /dev/null; then
    sshpass -p 'HWasnPhtq9AVKe0dmk45nxy20cvUa6EG' ssh -T -o StrictHostKeyChecking=no -p 2220 bandit6@bandit.labs.overthewire.org 2>/dev/null << 'EOF'
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null | xargs cat
EOF
else
    ssh -T -o StrictHostKeyChecking=no bandit6@bandit.labs.overthewire.org -p 2220 2>/dev/null << 'EOF'
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null | xargs cat
EOF
fi
