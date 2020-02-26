#!/bin/bash
PRJ=$PWD
echo $PRJ
cd /
find -L $PRJ -name '*.c' -o -name '*.h' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.py' -o -name '*.xml' -o -name '*.conf' | sed -e 's/.*/\"&\"/' > $PRJ/cscope.files
cd $PRJ

if [ -f "cscope.in.out" ]; then
	rm cscope.in.out
fi

if [ -f "cscope.out.in" ]; then
rm cscope.out.in
fi

if [ -f "cscope.out" ]; then
rm cscope.out
fi

if [ -f "cscope.po.out" ]; then
rm cscope.po.out
fi

if [ -f "cscope.out.po" ]; then
rm cscope.out.po
fi

echo $PWD
cscope -b -q -i$PRJ/cscope.files
rm -rf ctags
ctags -R

# EOF
