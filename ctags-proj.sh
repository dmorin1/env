#!/bin/bash
if [ -f "PROJECT_HEAD" ]; then
	src_index.sh
else
HERE=$PWD
cd ..
if [ "$PWD" = "$HERE" ]; then
echo "Got to /, have not found your project root,
		 abort!"
		 exit 1
		 fi
		 exec "$0"
		 fi
# EOF
