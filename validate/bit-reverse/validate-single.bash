#!/bin/bash

echo -e "\nWarning: Emulator.cc must be compiled for auto mode !!"

for exp in {1..15}
do
	echo -e "\nInput Size 2^$exp ~~~~~~~~~~~~~~~~~~~~~~"
	
	echo -n "Validating ./emulator snippets/mem-$exp.txt $1 ... "
	./emulator snippets/mem-$exp.txt $1  >& dump.sim
	cat dump.sim | grep mm | tail -n $(echo "(2^$exp)*2" | bc) | awk '{print $5}' | tr -d '()' > val.mem
	diffs=$(diff snippets/correct/$exp.ref val.mem | wc -l)
	if [ $diffs -eq 0 ]
	then
		echo -e "\e[00;32mPASSED\e[00m"
	else
		echo -e "\e[00;31mFAILED\e[00m"
	fi
		
	COUNT_MY=$(cat dump.sim | grep Total | gawk '{print $6}')
	./emulator snippets/mem-$exp.txt $2  >& dump.sim
	COUNT_REF=$(cat dump.sim | grep Total | gawk '{print $6}')
	echo -e "Total isntructions ref=$COUNT_REF optim=$COUNT_MY - diff=$(echo "$COUNT_REF-$COUNT_MY" | bc) (\e[1;33m$(echo "scale=2; 100*($COUNT_REF-$COUNT_MY)/$COUNT_REF" | bc)%\e[00m)"
done

rm val.mem dump.sim
