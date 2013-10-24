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

#include "processor.h"
#include "utils.h"

using namespace std;

Processor::Processor(Memory *my_new_memory) {
	total_instruction_count = 0;
	previous_pc             = 0;
	my_memory               = my_new_memory;
	
	// Create the space to store the processor's registers
    my_registers = (processor_state)malloc(register_count*PROCESSOR_REGISTER_WIDTH);
    memset(my_registers, 0, register_count*PROCESSOR_REGISTER_WIDTH);
    
    my_instruction_count = (unsigned int*)malloc(instruction_count*sizeof(unsigned int));
    memset(my_instruction_count, 0, instruction_count*sizeof(unsigned int));
    
    // \todo We're in Thumb mode by default
	my_registers[sp] |= CPSR_T;
    
    built_instruction_table();
    
}

void Processor::built_instruction_table(){
    //add_instruction("add","rr",add_rr);
}

void Processor::set_program_counter(address my_address) {
	//cout << "Setting pc address:  " << my_address << endl;
	*(address*)&my_registers[pc] = my_address;
}

void Processor::set_stack_pointer(address my_address) {
	//cout << "Setting sp address:  " << my_address << endl;
	*(address*)&my_registers[sp] = my_address;
}

void Processor::set_frame_pointer(address my_address) {
	*(address*)&my_registers[fp] = my_address;
}

void Processor::set_link_register(address my_address) {
	*(address*)&my_registers[lr] = my_address;
}

void Processor::set_intra_procedure(address my_address) {
	*(address*)&my_registers[ip] = my_address;
}

void Processor::set_stack_limit(address my_address) {
	*(address*)&my_registers[sl] = my_address;
}

void Processor::opcode_error(string my_opcode) {
    cerr << "No opcode handler found for (" << my_opcode << ")" << endl;
}

void Processor::dump() {

	printf(" r0  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r0], *(unsigned int*)&my_registers[r0]);
	printf(" r1  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r1], *(unsigned int*)&my_registers[r1]);
	printf(" r2  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r2], *(unsigned int*)&my_registers[r2]);
	printf(" r3  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r3], *(unsigned int*)&my_registers[r3]);
	printf(" r4  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r4], *(unsigned int*)&my_registers[r4]);
	printf(" r5  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r5], *(unsigned int*)&my_registers[r5]);
	printf(" r6  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r6], *(unsigned int*)&my_registers[r6]);
	printf(" r7  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r7], *(unsigned int*)&my_registers[r7]);
	printf(" r8  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r8], *(unsigned int*)&my_registers[r8]);
	printf(" r9  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r9], *(unsigned int*)&my_registers[r9]);
	printf(" sl  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r10], *(unsigned int*)&my_registers[r10]);
	printf(" fp  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r11], *(unsigned int*)&my_registers[r11]);
	printf(" ip  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r12], *(unsigned int*)&my_registers[r12]);
	printf(" sp  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r13], *(unsigned int*)&my_registers[r13]);
	printf(" lr  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r14], *(unsigned int*)&my_registers[r14]);
	printf(" pc  - 0x%08x (%u)\n", *(unsigned int*)&my_registers[r15], *(unsigned int*)&my_registers[r15]);
	
	/*
	cout << " r0 " << *(value*)   &my_registers[r0] << endl;
	cout << " r1 " << *(value*)   &my_registers[r1] << endl;
	cout << " r2 " << *(value*)   &my_registers[r2] << endl;
	cout << " r3 " << *(value*)   &my_registers[r3] << endl;
	cout << " r4 " << *(value*)   &my_registers[r4] << endl;
	cout << " r5 " << *(value*)   &my_registers[r5] << endl;
	cout << " r6 " << *(value*)   &my_registers[r6] << endl;
	cout << " r7 " << *(value*)   &my_registers[r7] << endl;
	cout << " r8 " << *(value*)   &my_registers[r8] << endl;
	cout << " r9 " << *(value*)   &my_registers[r9] << endl;
    cout << " sl " << *(address*) &my_registers[sl] << endl;
	cout << " fp " << *(address*) &my_registers[fp] << endl;
	cout << " ip " << *(address*) &my_registers[ip] << endl;
	cout << " sp " << *(address*) &my_registers[sp] << endl;
	cout << " lr " << *(address*) &my_registers[lr] << endl;
	cout << " pc " << *(address*) &my_registers[pc] << endl;
	*/
	
	cout	<< " flags -"
			<< "  N:" << ((my_registers[cpsr]&SIGN_FLAG) ? 1 : 0)
			<< "  Z:" << ((my_registers[cpsr]&ZERO_FLAG) ? 1 : 0)
			<< "  C:" << ((my_registers[cpsr]&CARRY_FLAG) ? 1 : 0)
			<< "  V:" << ((my_registers[cpsr]&OVERFLOW_FLAG) ? 1 : 0) << endl;
	
	/*
	cout << "Hex dump: " << endl;
	char* my_pointer = (char*)my_registers;
	for(int i = 0; i < (register_count*PROCESSOR_REGISTER_LENGTH); i++) {
		if(i%4 == 0)
			//cout << " " << (i/4+1) << ": ";
			printf(" %X: ", (unsigned int)(&my_pointer[i]));
		printf("%X ", (0xFF & my_pointer[i]));
		if(i%4 == 3)
			cout << endl;
	}
	*/
		
	cout << endl;
}

void Processor::print_executed_instruction() {
	assembly my_command = my_memory->get_program(previous_pc, 0);
	
	for(int i = 0; i < my_command.size(); i++)
		cout << my_command.at(i) << " ";
}

void Processor::print_next_instruction() {
	assembly my_command = my_memory->get_program(my_registers[pc], 0);
	
	for(int i = 0; i < my_command.size(); i++)
		cout << my_command.at(i) << " ";
}

void Processor::set_register(int reg, value my_value) {
    my_registers[reg] = my_value;
}

int Processor::execute_one_step() {
	assembly my_command = my_memory->get_program(my_registers[pc], TRACK);
	
	previous_pc = my_registers[pc];
    
	string my_opcode = my_command.at(0);
	
	if(my_opcode.compare("*") == 0) {
		// must stop emulator; end-of-file or error
		return 0;
	}
	else if(my_opcode.compare("mov") == 0) {
		if(is_register(my_command.at(2))) {
			mov(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else {
			mov(get_register(my_command.at(1).c_str()),
				get_value   (my_command.at(2).c_str()));
		}
	}
	else if(my_opcode.compare("add") == 0) {
		if(my_command.size() == 3) {
			add(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else if (my_command.size() == 4) {
			// add (1) reg, (2) reg, (3) #|reg
			if(is_register(my_command.at(3))) {
				add(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_register(my_command.at(3).c_str()));
			}
			else {
				add(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_value   (my_command.at(3).c_str()));
			}
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("asr") == 0) {
		// asr (1) reg, (2) reg, (3) #
		if(my_command.size() == 4) {
			asr(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_value   (my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("asl") == 0) {
		// asl (1) reg, (2) reg, (3) #
		if(my_command.size() == 4) {
			asl(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_value   (my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("lsr") == 0) {
		// lsr (1) reg, (2) reg, (3) #
		if(my_command.size() == 4) {
			lsr(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_value   (my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("lsl") == 0) {
		// lsl (1) reg, (2) reg, (3) #
		if(my_command.size() == 4) {
			if(!is_register(my_command.at(3)))
				lsl(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_value   (my_command.at(3).c_str()));
			else
				lsl(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_register(my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("cmp") == 0) {
		// cmp (1) reg, (2) #|reg
		if(is_register(my_command.at(2)))
			cmp(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		else
			cmp(get_register(my_command.at(1).c_str()),
				get_value   (my_command.at(2).c_str()));
	}
	// b.. (1) #
	else if(my_opcode[0] == 'b') {
		if(my_opcode.compare("ble") == 0) {
			ble(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bgt") == 0) {
			bgt(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bge") == 0) {
			bge(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bne") == 0) {
			bne(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("beq") == 0) {
			beq(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("blt") == 0) {
			blt(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bl") == 0) {
			bl(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bx") == 0) {
			bx(my_command.at(1).c_str());
		}
		else if(my_opcode.compare("b") == 0) {
			b(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bmi") == 0) {
			bmi(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bpl") == 0) {
			bpl(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bvs") == 0) {
			bvs(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bvc") == 0) {
			bvc(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bhi") == 0) {
			bhi(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bls") == 0) {
			bls(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("bal") == 0) {
			bal(get_value(my_command.at(1).c_str()));
		}
		else if(my_opcode.compare("blx") == 0) {
			blx(get_value(my_command.at(1).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("and") == 0) {
		// and (1) reg, (2) reg, (3) reg
		cout << "Yahooo!!!!" << endl;
		if(my_command.size() == 3) {
			ando(get_register(my_command.at(1).c_str()),
				 get_register(my_command.at(2).c_str()));
		}
		else if(my_command.size() == 4) {
			ando(get_register(my_command.at(1).c_str()),
				 get_register(my_command.at(2).c_str()),
				 get_register(my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("eor") == 0) {
		if(my_command.size() == 3) {
			eor(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else if(my_command.size() == 4 && is_register(my_command.at(3))) {
			eor(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_register(my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("orr") == 0) {
		// or (1) reg, (2) reg, (3) reg
		if(my_command.size() == 3) {
			orr(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else if(my_command.size() == 4) {
			orr(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_register(my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("bic") == 0) {
		bic(get_register(my_command.at(1).c_str()),
			get_register(my_command.at(2).c_str()));
	}
    else if(my_opcode.compare("tst") == 0) {
		// tst (1) reg, (2) #|reg
		if(is_register(my_command.at(2))) {
			tst(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else {
			tst(get_register(my_command.at(1).c_str()),
				get_value   (my_command.at(2).c_str()));
		}
	}
	else if(my_opcode.compare("sub") == 0) {
		// sub (1) reg, (2) reg, (3) #|reg
		if(is_register(my_command.at(3))) {
			sub(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_register(my_command.at(3).c_str()));
		}
		else {
			sub(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_value   (my_command.at(3).c_str()));
		}
	}
	else if(my_opcode.compare("str") == 0) {
		// str (1) reg, (2) reg | (3) #
		if(my_command.size() == 3) {
			str(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else if(my_command.size() == 4) {
			str(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()),
				get_value   (my_command.at(3).c_str()));
		}
		else
			opcode_error(my_command.at(0));
	}
	else if(my_opcode.compare("ldr") == 0) {
		if(my_command.size() == 3) {
				// ldr (1) reg, (2) #|reg
			if(is_register(my_command.at(2)))
				ldr(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()));
			else // \todo does this exist?
				ldr(get_register(my_command.at(1).c_str()),
					get_value   (my_command.at(2).c_str()));
		}
		else if (my_command.size() == 4) {
				// ldr (1) reg, (2) reg, (3) #|reg
			if(is_register(my_command.at(3)))
				ldr(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_register(my_command.at(3).c_str()));
			else  // \todo does this exist?
				ldr(get_register(my_command.at(1).c_str()),
					get_register(my_command.at(2).c_str()),
					get_value   (my_command.at(3).c_str()));
		}
	}
	else if(my_opcode.compare("mvn") == 0) {
		if(is_register(my_command.at(2))) {
			mvn(get_register(my_command.at(1).c_str()),
				get_register(my_command.at(2).c_str()));
		}
		else {
			mvn(get_register(my_command.at(1).c_str()),
				get_value   (my_command.at(2).c_str()));
		}
	}
	else if(my_opcode.compare("push") == 0) {
		// push (1) reg, ...
		push(&my_command);
	}
	else if(my_opcode.compare("pop") == 0) {
		// pop (1) reg, ...
		pop(&my_command);
	}
	else {
		cerr << "No opcode handler found for (";
		for(int i = 0; i < my_command.size(); i++) 
			cerr << my_command.at(i) << " ";
		cerr << ")" << endl;
	}
    
	total_instruction_count++;
	
	return 1;
}

void Processor::print_opcode(assembly opcode) {
    for(int i =0; i < opcode.size(); i++) {
        cout << opcode.at(i) << " ";
    }
}

#define stringify( name ) # name

void Processor::print_statistics() {
	cout << "Total amount of instructions called: " << total_instruction_count << endl << endl;
	
    cout << "Instruction statistcs (total " << total_instruction_count << " calls) sorted:" << endl;

    string isntruction_names[] = {	"push","pop","sub-r","sub-v","mov-r","mov-v","mvn-r","mvn-v",
									"cmp-r","cmp-v","add","add-r","add-v","ldr-r","ldr-v","ldr-rr",
									"str-r","str-v","ble","bgt","bge","blt","beq","bne","bcs","bcc","bmi","bpl","bvs","bvc","bhi","bls","bal",
									"bl","blx","bx","b","asr","asl","lsr","lsl-r","lsl-v","eor","eor-r","orr","orr-r",
									"and","and-r","bic","tst-r","tst-v"};
    
	// build map
	map<string, int> my_stat_map;
	
	for(int count = 0; count < instruction_count; count++) {
		my_stat_map.insert(pair<string, unsigned int>(isntruction_names[count],  my_instruction_count[count]));
	}
    
    vector<pair<string, unsigned int> > map_copy(my_stat_map.begin(), my_stat_map.end());
	sort(map_copy.begin(), map_copy.end(), less_second<string, unsigned int>());
	
	for(int i = 0; i < map_copy.size(); i++) {
		cout << "iss\t" << (i+1) << "\t" << map_copy.at(i).first << "\t" << map_copy.at(i).second << endl;
	}
	cout << endl;
	
	cout << "Instruction statistcs (total " << total_instruction_count << " calls) alphabetical:" << endl;
	for(int i = 0; i < instruction_count; i++) {
		cout << "isa\t" << (i+1) << "\t" << isntruction_names[i] << "\t" << my_instruction_count[i] << endl;
	}
	cout << endl;
}

void Processor::memcpy() {
    cout << "Calling memcpy ..." << endl;
}

void Processor::push(vector<string>* my_command) {
	int reg_count = 0;
	for(int i = 1; i < my_command->size(); i++) {
		reg my_reg = get_register(my_command->at(i).c_str());
		//cout << "Pushing " << my_reg << " to " << my_registers[sp]-(i*4) << endl;
		my_memory->set(my_registers[sp]-(i*4), my_registers[my_reg], TRACK);
		reg_count++;
	}
	my_registers[sp] -= reg_count*4;
	my_registers[pc] += 4;
    my_instruction_count[i_push]++;
}

void Processor::pop(vector<string>* my_command) {
	int reg_count = 0;
	
	// lets increase pc first, may be reset by pop...
	my_registers[pc] += 4;
	
	for(int i = (my_command->size()-1); i > 0; i--) {
		reg my_reg = get_register(my_command->at(i).c_str());
		//cout << "Popping " << (my_registers[sp]+(reg_count*4)) << " to " << my_reg << endl;
		//if(my_reg != pc)
			my_registers[my_reg] = my_memory->get(my_registers[sp]+(reg_count*4), TRACK);
		//else
			// actually the end-of-funciton - quit the program; add increadible number. 
		//	my_registers[pc] += 100000;
		reg_count++;
	}
	my_registers[sp] += reg_count*4;
	
    my_instruction_count[i_pop]++;
}

void Processor::sub(reg a, reg b, reg c) {
	set_flags_for(my_registers[b], '-', my_registers[c]);
	my_registers[a] = my_registers[b] - my_registers[c];
	my_registers[pc] += 4;
    my_instruction_count[i_sub_r]++;
}
    
void Processor::sub(reg a, reg b, value c) {
	set_flags_for(my_registers[b], '-', c);
	my_registers[a] = my_registers[b] - c;
	my_registers[pc] += 4;
    my_instruction_count[i_sub_v]++;
}

void Processor::mov(reg a, reg b) {
	my_registers[a] = my_registers[b];
	my_registers[pc] += 4;
    my_instruction_count[i_mov_r]++;
}
    
void Processor::mov(reg a, value b) {
	my_registers[a] = b;
	my_registers[pc] += 4;
    my_instruction_count[i_mov_v]++;
}

void Processor::mvn(reg a, reg b) {
	my_registers[a] = ~my_registers[b];
	my_registers[pc] += 4;
    my_instruction_count[i_mvn_r]++;
}
    
void Processor::mvn(reg a, value b) {
	my_registers[a] = ~b;
	my_registers[pc] += 4;
    my_instruction_count[i_mvn_v]++;
}

void Processor::cmp(reg a, reg b) {
	set_flags_for(my_registers[a], '-', my_registers[b]);
	my_registers[pc] += 4;
    my_instruction_count[i_cmp_r]++;
}

void Processor::cmp(reg a, value b) {
	set_flags_for(my_registers[a], '-', b);
	my_registers[pc] += 4;
    my_instruction_count[i_cmp_v]++;
}

void Processor::set_flags_for(value a, char operation, value b) {
	
	if(operation == '+')
		instruction_results = (unsigned long int)a + (unsigned long int)b;
	else if (operation == '-')
		instruction_results = (unsigned long int)a - (unsigned long int)b;
    else if (operation == '&')
		instruction_results = (unsigned long int)a & (unsigned long int)b;
	
	// set sign flag
	if(instruction_results & 0x0000000080000000)
		my_registers[cpsr] |=  SIGN_FLAG;
	else
		my_registers[cpsr] &= ~SIGN_FLAG;
	// set zero flag
	if ((instruction_results & 0x00000000FFFFFFFF) == 0)
		my_registers[cpsr] |=  ZERO_FLAG;
	else
		my_registers[cpsr] &=  ~ZERO_FLAG;
	// set carry flag
	if (instruction_results & 0x0000000100000000)
		my_registers[cpsr] |= CARRY_FLAG;
	else
		my_registers[cpsr] &= ~CARRY_FLAG;
	// set overflow flag
	if ((instruction_results & 0xFFFFFFFF00000000) != 0)
		my_registers[cpsr] &= ~OVERFLOW_FLAG;
	else
		my_registers[cpsr] &= ~OVERFLOW_FLAG;
	
}

void Processor::add(reg a, reg b, reg c) {
	set_flags_for(my_registers[b], '+', my_registers[c]);
	my_registers[a] = my_registers[b] + my_registers[c];
	my_registers[pc] += 4;
    my_instruction_count[i_add_r]++;
}

void Processor::add(reg a, reg b, value c) {
	set_flags_for(my_registers[b], '+', c);
	my_registers[a] = my_registers[b] + c;
	my_registers[pc] += 4;
    my_instruction_count[i_add_v]++;
}

void Processor::add(reg a, reg b) {
	if(b == pc) {
		// dont't do anything, operation is used to calculated the offset
		// relative to the program, in our case there is no offset
		// as the program starts at location 0
		//my_registers[a] = (my_registers[b] + 8);
		cerr << "Warning: dropping \"add rx, pc\" command ..." << endl;
	}
	else
		cerr << "Unkown add command." << endl;
	my_registers[pc] += 4;
    my_instruction_count[i_add]++;
}
    
void Processor::ldr(reg a, value b) {
	my_registers[a] = b;
	my_registers[pc] += 4;
    my_instruction_count[i_ldr_v]++;
}

void Processor::ldr(reg a, reg b) {
	my_registers[a] = my_memory->get(my_registers[b], TRACK);
	
	my_registers[pc] += 4;
    my_instruction_count[i_ldr_r]++;
}

void Processor::ldr(reg a, reg b, value c) {
	my_registers[a] = my_memory->get(my_registers[b] + c, TRACK);
	my_registers[pc] += 4;
    my_instruction_count[i_ldr_v]++;
}

void Processor::ldr(reg a, reg b, reg c) {
	my_registers[a] = my_memory->get(my_registers[b] + my_registers[c], TRACK);
	my_registers[pc] += 4;
    my_instruction_count[i_ldr_rr]++;
}

void Processor::str(reg a, reg b) {
	my_memory->set(my_registers[b], my_registers[a], TRACK);
	my_registers[pc] += 4;
    my_instruction_count[i_str_r]++;
}

void Processor::str(reg a, reg b, value c) {
	my_memory->set(my_registers[b] + c, my_registers[a], TRACK);
	my_registers[pc] += 4;
    my_instruction_count[i_str_v]++;
}

void Processor::asr(reg a, reg b, value c) {
    my_registers[a] = my_registers[b] >> c;
    // get the MSB right -> its an arithmatic shift ;)
    my_registers[a] &= ~(MSB_MASK);
    my_registers[a] |=  (MSB_MASK&my_registers[b]);
    my_registers[pc] += 4;
    my_instruction_count[i_asr]++;
}

void Processor::asl(reg a, reg b, value c) {
    my_registers[a] = my_registers[b] << c;
    my_registers[pc] += 4;
    my_instruction_count[i_asl]++;
}

void Processor::lsr(reg a, reg b, value c) {
	my_registers[a] = my_registers[b] >> c;
	my_registers[pc] += 4;
    my_instruction_count[i_lsr]++;
}

void Processor::lsl(reg a, reg b, reg c) {
	my_registers[a] = my_registers[b] << my_registers[c];
	my_registers[pc] += 4;
    my_instruction_count[i_lsl_r]++;
}
    
void Processor::lsl(reg a, reg b, value c) {
	my_registers[a] = my_registers[b] << c;
	my_registers[pc] += 4;
    my_instruction_count[i_lsl_v]++;
}

/*
http://www.davespace.co.uk/arm/introduction-to-arm/conditional.html
 0000 *	EQ	Equal / equals zero	Z
0001 *	NE	Not equal	!Z
0010 *	CS / HS	Carry set / unsigned higher or same	C
0011 *	CC / LO	Carry clear / unsigned lower	!C
0100	MI	Minus / negative	N
0101	PL	Plus / positive or zero	!N
0110	VS	Overflow	V
0111	VC	No overflow	!V
1000	HI	Unsigned higher	C and !Z
1001	LS	Unsigned lower or same	!C or Z
1010 *	GE	Signed greater than or equal	N == V
1011 *	LT	Signed less than	N != V
1100 *	GT	Signed greater than	!Z && (N == V)
1111 *	LE	Signed less than or equal	Z || (N != V)
1110	AL	Always (default)	any
*/

void Processor::bmi(value a) {
	int N = my_registers[cpsr] & SIGN_FLAG;
	
	if(N)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bmi]++;
}

void Processor::bpl(value a) {
	int N = my_registers[cpsr] & SIGN_FLAG;
	
	if(!N)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bpl]++;
}

void Processor::bvs(value a) {
	int V = my_registers[cpsr] & OVERFLOW_FLAG;
	
	if(V)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bvs]++;
}

void Processor::bvc(value a) {
	int V = my_registers[cpsr] & OVERFLOW_FLAG;
	
	if(!V)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bvc]++;
}

void Processor::bhi(value a) {
	int C = my_registers[cpsr] & CARRY_FLAG;
	int Z = my_registers[cpsr] & ZERO_FLAG;
	
	if(C && !Z)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bhi]++;
}

void Processor::blx(value a) {
	my_registers[pc] = a & 0xFFFFFFFE;
	
	if(a & 0x00000001)
		my_registers[cpsr] |= CPSR_T;
	else
		my_registers[cpsr] &= ~CPSR_T;
	
    my_instruction_count[i_blx]++;
}

void Processor::bls(value a) {
	int C = my_registers[cpsr] & CARRY_FLAG;
	int Z = my_registers[cpsr] & ZERO_FLAG;
	
	if(!C || Z)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bls]++;
}

void Processor::bal(value a) {
	my_registers[pc] = a;
    my_instruction_count[i_bal]++;
}

void Processor::ble(value a) {
	int N = (my_registers[cpsr] & SIGN_FLAG) >> 3;
	int Z =  my_registers[cpsr] & ZERO_FLAG;
	int V =  my_registers[cpsr] & OVERFLOW_FLAG;
	
	if(Z || (N != V)) {
		my_registers[pc] = a;
	}
	else {
		my_registers[pc] += 4;
	}
    my_instruction_count[i_ble]++;
}

void Processor::bgt(value a) {
	int N = (my_registers[cpsr] & SIGN_FLAG) >> 3;
	int Z =  my_registers[cpsr] & ZERO_FLAG;
	int V =  my_registers[cpsr] & OVERFLOW_FLAG;
	
	if(!Z && (N == V))
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bgt]++;
}

void Processor::blt(value a) {
	int N = my_registers[cpsr] & SIGN_FLAG;
	int V = my_registers[cpsr] & OVERFLOW_FLAG;

	if(N != V)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_blt]++;
}

void Processor::bge(value a) {
	int N = (my_registers[cpsr] & SIGN_FLAG) >> 3;
	int V =  my_registers[cpsr] & OVERFLOW_FLAG;

	if (N == V)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bge]++;
}

void Processor::beq(value a) {
	int Z = my_registers[cpsr] & ZERO_FLAG;
	
	if(Z)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_beq]++;
}

void Processor::bne(value a) {
	int Z = my_registers[cpsr] & ZERO_FLAG;
	
	if(!Z)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bne]++;
}

void Processor::bcs(value a) {
	int C = my_registers[cpsr] & CARRY_FLAG;
	
	if(C)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bcs]++;
}

void Processor::bcc(value a) {
	int C = my_registers[cpsr] & CARRY_FLAG;
	
	if(!C)
		my_registers[pc] = a;
	else
		my_registers[pc] += 4;
    my_instruction_count[i_bcc]++;
}

void Processor::bx(const char* a) {
	// end-of-funciton - quit the program
    // \todo also change thumb state!
    if(strcmp(a, "lr") == 0)
        my_registers[pc] = my_registers[lr];
    my_instruction_count[i_bx]++;
}

void Processor::b(value a) {
    my_registers[pc] = a;
    my_instruction_count[i_b]++;
}

void Processor::bl(value a) {
	// content in R14 (link register) is replaced with content of R15(program counter=PC)+4.
	// content of PC is replaced by the address of firstfunc
    // my_registers[lr] = my_registers[pc] + 4;
    // my_registers[pc] = a;
    // cerr << "Warning: dropping \"bl\" command ..." << endl;
    my_registers[lr] = my_registers[pc] + 4;
    my_registers[pc] = a;
    my_instruction_count[i_bl]++;
}

void Processor::eor(reg a, reg b) {
	my_registers[a] = my_registers[a] ^ my_registers[b];
	my_registers[pc] += 4;
	my_instruction_count[i_eor]++;
}

void Processor::eor(reg a, reg b, reg c) {
	my_registers[a] = my_registers[b] ^ my_registers[c];
	my_registers[pc] += 4;
	my_instruction_count[i_eor_r]++;
}

void Processor::ando(reg a, reg b) {
	my_registers[a] = my_registers[a] & my_registers[b];
	my_registers[pc] += 4;
	my_instruction_count[i_and]++;
}

void Processor::ando(reg a, reg b, reg c) {
	my_registers[a] = my_registers[b] & my_registers[c];
	my_registers[pc] += 4;
	my_instruction_count[i_and_r]++;
}

void Processor::orr(reg a, reg b) {
	my_registers[a] = my_registers[a] | my_registers[b];
	my_registers[pc] += 4;
	my_instruction_count[i_orr]++;
}

void Processor::orr(reg a, reg b, reg c) {
	my_registers[a] = my_registers[b] | my_registers[c];
	my_registers[pc] += 4;
	my_instruction_count[i_orr_r]++;
}

void Processor::bic(reg a, reg b) {
	my_registers[a] = my_registers[a] & ~my_registers[b];
	my_registers[pc] += 4;
	my_instruction_count[i_bic]++;
}

void Processor::tst(reg a, reg b) {
    set_flags_for(my_registers[a], '&', my_registers[b]);
	my_registers[pc] += 4;
	my_instruction_count[i_tst_r]++;
}

void Processor::tst(reg a, value b) {
    set_flags_for(my_registers[a], '&', b);
	my_registers[pc] += 4;
	my_instruction_count[i_tst_v]++;
}

