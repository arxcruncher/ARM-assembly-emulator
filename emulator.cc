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

#include "emulator.h"

using namespace std;

Emulator::Emulator() {
	my_memory   = new Memory();
	my_processor = new Processor(my_memory);
}

Memory* Emulator::get_memory() {
	return my_memory;
}

Processor* Emulator::get_processor() {
	return my_processor;
}

void Emulator::dump_memory() {
	my_memory->dump(0, 1000);
}

void Emulator::dump_processor() {
	my_processor->dump();
}

void Emulator::dump_program() {
	my_memory->dump_program();
}

void Emulator::dump_state() {
	my_memory->dump(0, 1000);
	my_processor->dump();
}

int Emulator::execute_one_step() {
	int more_work_to_do = my_processor->execute_one_step();
	return more_work_to_do;
}

void Emulator::print_statistics() {
	my_memory->print_statistics();
	my_processor->print_statistics();
}

void Emulator::print_executed_instruction() {
	my_processor->print_executed_instruction();
}

int main(int argc, const char** argv) {
    
    const char *file_memory_map;
    const char *file_program;
    
    int print_memory = 0;
    int print_cpu = 0;
    int print_links = 0;
    int print_program = 0;
    
    if(argc < 5) {
		cout << "Argumenst: -m <memory-map>" << endl;
		cout << "           -p <assembly-code>" << endl;
		cout << "           -d {m|p|l|r}" << endl;
		return -1;
	}
    
    cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    cout << "~ Institute Mines-Telecom ARM-emulator 2012 ~" << endl;
    cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    
    Emulator *my_emulator = new Emulator();
    
    
    for(int i = 0; i < argc; i++) {
		if(argv[i][0] == '-') {
			switch (argv[i][1]) {
				case 'm' : file_memory_map = argv[++i]; break;
				case 'p' : file_program    = argv[++i]; break;
				case 'd' : {
					char *to_print = (char*)argv[++i];
					for(int k = 0; k < strlen(argv[i]); k++) {
						switch (*to_print) {
							case 'm' : print_memory = 1; break;
							case 'p' : print_cpu = 1; break;
							case 'l' : print_links = 1; break;
							case 'r' : print_program = 1; break;
						}
						to_print++;
					}
				}
			}
		}
	}
	
	cout << "Printing links " << print_links << endl;
    
    File *my_file = new File(file_memory_map,
							 file_program,
							 my_emulator->get_memory(),
							 my_emulator->get_processor(),
							 print_links);
    
    if(print_program) {
		cout << "PROGRAM:" << endl;
		my_emulator->dump_program();
	}
    
    //my_emulator->dump_state();
    
    if(print_memory) {
		cout << "Initial MEMORY state:" << endl;
		my_emulator->dump_memory();
	}
    
    if(print_cpu) {
		cout << "Initial CPU state:" << endl;
		my_emulator->dump_processor();
	}
    
    int rounds = 0;
    
    cout << "Start of program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    
    while(my_emulator->execute_one_step() && rounds < numeric_limits<int>::max()) {
		//cout << rounds << ": ";
		//my_emulator->print_executed_instruction(); cout << endl;
		//my_emulator->dump_processor();
		//my_emulator->dump_memory();
        rounds++;
        //if(rounds > 193) cin.get();
    }
    
    cout << "End of program ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" << endl;
    cout << "Instructions executed: " << rounds << endl << endl;
    
    //my_emulator->dump_state();
    my_emulator->dump_processor();
    
    my_emulator->dump_memory();
    
    my_emulator->print_statistics();
    
    return 0;
}
