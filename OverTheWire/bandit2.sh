#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p '263JGJPfgU6LtdEvgfWU1XP5yac29mFx' ssh bandit2@bandit.labs.overthewire.org -p 2220 'cat spaces*' 2>/dev/null
else
    ssh bandit2@bandit.labs.overthewire.org -p 2220 << EOF
cat *name
EOF
fi






