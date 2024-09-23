#!/bin/bash
if command -v sshpass &> /dev/null
then
sshpass -p '4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw' ssh -o StrictHostKeyChecking=no bandit5@bandit.labs.overthewire.org -p 2220 'find . -type f -readable ! -executable -size 1033c | xargs cat | xargs' 2>/dev/null
else
    ssh bandit5@bandit.labs.overthewire.org -p 2220 << EOF
find . -type f -readable ! -executable -size 1033c | xargs cat | xargs
EOF
fi

