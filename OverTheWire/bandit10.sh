#!/bin/bash
if command -v sshpass &> /dev/null; then
    sshpass -p 'FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey' ssh -T -o StrictHostKeyChecking=no -p 2220 bandit10@bandit.labs.overthewire.org 2> /dev/null << 'EOF'
base64 -d data.txt 2> /dev/null
EOF
else
    ssh -T -o StrictHostKeyChecking=no bandit10@bandit.labs.overthewire.org -p 2220 2> /dev/null << 'EOF'
base64 -d data.txt 2> /dev/null
EOF
fi
