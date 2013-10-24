#!/bin/bash

PROG="../../emulator"

for algo in {"gold","bloodworth","nbrv","rodriguez","krukar"}
do
	for optim in {0,2}
	do
		echo -n "Validating $PROG mem-$exp.txt $algo-$optim.s ... "
		$PROG -m mem-10.txt -p $algo-$optim.s >& dump.sim
		cat dump.sim | grep mm | tail -n $(echo "(2^10)*2" | bc) | awk '{print $5}' | tr -d '()' > val.mem
		diffs=$(diff correct/10.ref val.mem | wc -l)
		if [ $diffs -eq 0 ]
		then
			echo -e "\e[00;32mPASSED\e[00m"
		else
			echo -e "\e[00;31mFAILED\e[00m"
			#diff ref.mem val.mem
		fi
	done
done

rm val.mem dump.sim
