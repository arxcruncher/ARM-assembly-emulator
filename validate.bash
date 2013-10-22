#!/bin/bash

echo -e "\nWarning: Emulator.cc must be compiled for auto mode !!"

for exp in {1..15}
do
	echo -e "\nInput Size 2^$exp ~~~~~~~~~~~~~~~~~~~~~~"
	
	for algo in {"gold","bloodworth","nbrv","rodriguez","krukar"}
	do
		for optim in {0,2}
		do
			echo -n "Validating ./emulator snippets/mem-$exp.txt snippets/$algo-$optim.s ... "
			./emulator snippets/mem-$exp.txt snippets/$algo-$optim.s >& dump.sim
			cat dump.sim | grep mm | tail -n $(echo "(2^$exp)*2" | bc) | awk '{print $5}' | tr -d '()' > val.mem
			diffs=$(diff snippets/correct/$exp.ref val.mem | wc -l)
			if [ $diffs -eq 0 ]
			then
				echo -e "\e[00;32mPASSED\e[00m"
			else
				echo -e "\e[00;31mFAILED\e[00m"
				#diff ref.mem val.mem
			fi
		done
	done
done

rm val.mem dump.sim
