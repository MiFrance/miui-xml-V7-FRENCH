#!/bin/bash

XSL=tools/misort.xsl

# applies XSL stylesheet with Xalan for each file
for input in `find . -name "strings.xml"`;
do
	echo "backup & sort routine for : $input"
	cp $input $input.".orig"
	Xalan -o $input $input $XSL
done
