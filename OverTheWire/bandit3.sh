#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p 'MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx' ssh -o StrictHostKeyChecking=no bandit3@bandit.labs.overthewire.org -p 2220 'cat ./inhere/.*' 2>/dev/null
else
    ssh bandit3@bandit.labs.overthewire.org -p 2220 << EOF
cat ./inhere/.*
EOF
fi

