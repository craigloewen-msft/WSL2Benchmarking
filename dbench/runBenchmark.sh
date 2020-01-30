#!/bin/bash

runDbenchTests () {
	echo $1 $2 $3
	dbench -D $1 -t $2 $3 > $4
}

testTime=10;
numProcs=2;

runDbenchTests ./ $testTime $numProcs testresults.txt
