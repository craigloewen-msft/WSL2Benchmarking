#!/bin/bash

run_sysbench () {
	sysbench fileio $1 prepare
	sysbench fileio $1 --file-test-mode=seqwr run > $2
	sysbench fileio $1 cleanup
}

run_sysbench "--file-total-size=1GB --file-num=128" "testResult.txt"
