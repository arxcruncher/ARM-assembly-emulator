/*
 * ARM assembly level emulator
 *
 * Copyright (c) 2012 Institute Mines-Telecom
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html>
 */

#include "memory.h"

using namespace std;

Memory::Memory() {}

void Memory::set(address my_address, value my_value, int stat) {
	
	// only addresses modulo 4 are stored
	address my_base_address = my_address & ADDRESS_MASK;
	
	// check if the address is integer aligned
	if(!(my_address & ADDRESS_MASK_INVERSE)) {
		map<address,value>::iterator iter = my_memory_map.find(my_base_address);
		// If key already present, just update it
		if(iter != my_memory_map.end())
			iter->second = my_value;
		else
			my_memory_map.insert(pair<address,value>(my_base_address, my_value));
	}
	else {
		// \todo complete, doesn't work yet perfectly :s
		map<address,value>::iterator iter = my_memory_map.find(my_base_address);
		
        cerr << "Error: unaligned memory access!" << endl;
        
		int shift = (my_address & ADDRESS_MASK_INVERSE) * 8;
		// cout << shift << endl;
		value first_part  = my_value >> shift;
		shift = MEMORY_LENGTH - shift;
		// cout << shift << endl;
		value second_part = my_value << shift;
		
		// If key already present, just update it
		// only works sequential memory is present
		if(iter != my_memory_map.end()) {
			my_memory_map[my_base_address]   = first_part;
			my_memory_map[my_base_address+1] = second_part;
		}
	}
    
    if(stat) {
        map<address,value>::iterator iter = my_memory_stat_set.find(my_base_address);
        // If key already present, just update it
        if(iter != my_memory_stat_set.end())
            iter->second++;
        else
            my_memory_stat_set.insert(pair<address,value>(my_base_address, 1));
    }
    
}
	
value Memory::get(address my_address, int stat) {
	memory_map::iterator iter = my_memory_map.find(my_address);
	
	if(iter != my_memory_map.end()) {
        if(stat) {
            // update statistics, if found
            memory_map_stat::iterator iter_stat = my_memory_stat_get.find(my_address);
            if(iter_stat != my_memory_stat_get.end())
                iter_stat->second++;
            else
                my_memory_stat_get.insert(pair<address,value>(my_address, 1));
        }
		return iter->second;
	}
	else {
		cerr << "Memory (data) location " << my_address << " not found!" << endl;
	}

	return 0;
}
	
void Memory::load(address my_address, value* my_value, int length) {
}
	
void Memory::dump(address my_address, int length) {
	int round = 0;
	//for(map<address,value>::iterator itr = my_memory_map.begin(); itr != my_memory_map.end() && round < length; ++itr, round++) {
	for(map<address,value>::iterator itr = my_memory_map.begin(); itr != my_memory_map.end(); ++itr) {
		// cout << " " << itr->first << ": " << itr->second << endl;
        printf("mm 0x%08x - 0x%08x (%u)\n", itr->first, itr->second, itr->second);
	}
    
    cout << endl;
}

void Memory::dump_program() {
    int count = 0;
    cout << endl << "Program Map content:" << endl;
	for(map<address,assembly>::iterator itr = my_program_map.begin(); itr != my_program_map.end() && count < 1000; ++itr, count++) {
		cout << " " << itr->first << " ";
		for(int i = 0; i < itr->second.size(); i++)
			cout << itr->second.at(i) << " ";
		cout << endl;
	}
	cout << endl;
}

void Memory::set_program(address my_address, assembly my_assembly) {
	//cout << "Setting program memory " << my_address << " ";
	//for(int i = 0; i < my_assembly.size(); i++)
	//	cout << "(" << i << ") \"" << my_assembly.at(i) << "\" - ";
	//cout << endl;
	
	my_program_map.insert(pair<address,assembly>(my_address, my_assembly));
}

assembly Memory::get_program(address my_address, int stat) {
	program_map::iterator iter = my_program_map.find(my_address);
    
	if(iter != my_program_map.end()) {
		// update statistics, if found
        if(stat) {
            program_map_stat::iterator iter_stat = my_program_stat.find(my_address);
            if(iter_stat != my_program_stat.end())
                iter_stat->second++;
            else
                my_program_stat.insert(pair<address,value>(my_address, 1));
        }
		return iter->second;
	}
	else {
		if(my_address != 9999) {
			cerr << "Memory (program) location " << my_address << " not found!" << endl;
		}
	}	
	
	vector<string> error_stop_execution;
	error_stop_execution.push_back("*");
	return error_stop_execution;
}

void Memory::print_statistics() {
	
	int count = 1;
	cout << "Data memory get statistics:" << endl;
	for(memory_map::iterator iter_mem_get = my_memory_map.begin(); iter_mem_get != my_memory_map.end(); iter_mem_get++) {
        cout << "dmg\t" << count << "\t" << iter_mem_get->first << "\t" << my_memory_stat_get[iter_mem_get->first] << endl;
        count++;
	}
	cout << endl;
    
    count = 1;
    cout << "Data memory set statistics:" << endl;
	for(memory_map::iterator iter_mem_set = my_memory_map.begin(); iter_mem_set != my_memory_map.end(); iter_mem_set++) {
		cout <<  "dms\t" << count << "\t" << iter_mem_set->first << "\t" << my_memory_stat_set[iter_mem_set->first] << endl;
		count++;
	}
	cout << endl;
    
	count = 1;
	cout << "Program memory statistics:" << endl;
	for(program_map::iterator iter_prog = my_program_map.begin(); iter_prog != my_program_map.end(); iter_prog++) {
		cout << "pm\t"<< my_program_stat[iter_prog->first] << " kl ";
		for(int k = 0; k < iter_prog->second.size(); k++)
			cout << iter_prog->second.at(k) << " ";
		cout << endl;
		count++;
	}
	cout << endl;
}

