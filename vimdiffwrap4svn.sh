#!/bin/bash
#echo "vimdiffwrap exe 1:${1} 2:${2} 3:${3} 4:${4} 5:${5} 6:${6} 7:${7}"
read -ra TOKEN <<< "${3}"
LEFT="${TOKEN[0]}"
/usr/bin/vimdiff ${6} ${LEFT}

