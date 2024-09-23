#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p 'ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220 'cat ./-' 2>/dev/null
else
    ssh bandit1@bandit.labs.overthewire.org -p 2220 << EOF
cat ./-
EOF
fi
