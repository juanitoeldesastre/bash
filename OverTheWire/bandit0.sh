#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p 'bandit0' ssh bandit0@bandit.labs.overthewire.org -p 2220 'grep "is:" readme | sed "s/.*: //"' 2>/dev/null
else
    echo "La contraseña es bandit0..."
    ssh bandit0@bandit.labs.overthewire.org -p 2220 << EOF
cat readme | grep "is:" | sed "s/.*: //"
EOF
fi




