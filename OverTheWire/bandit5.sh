#!/bin/bash

if command -v sshpass &> /dev/null
then
    sshpass -p '4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw' ssh -T -q -o StrictHostKeyChecking=no -p 2220 bandit5@bandit.labs.overthewire.org 'find . -type f -readable ! -executable -size 1033c 2> /dev/null | xargs cat | sed "/^\s*$/d"'
else
    ssh -T -q -o StrictHostKeyChecking=no bandit5@bandit.labs.overthewire.org -p 2220 << EOF
find . -type f -readable ! -executable -size 1033c 2> /dev/null | xargs cat | sed "/^\$*/d"
EOF
fi
