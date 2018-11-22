#!/bin/bash
echo $#
re=^[0-9]*$
for i in $@
do
	echo $i | grep $re

done
