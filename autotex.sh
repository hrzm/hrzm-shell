#!/bin/sh
if [ `echo $1 | grep 'tex'` ] ; then
	echo "texを抜いてね"
	exit 1
fi
platex $1.tex
pbibtex $1
platex $1.tex
platex $1.tex
dvipdfmx $1
open -a Preview $1.pdf