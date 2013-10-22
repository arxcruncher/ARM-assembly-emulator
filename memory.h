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

#ifndef MEMORY_H
#define MEMORY_H

#include <iostream>
#include <map>
#include <vector>
#include <stdio.h>

using namespace std;

#define INTEGER  4
#define CHAR     1
#define SHORT    2
#define LONG     8
#define DOUBLE   8

// values for a 32 bit system
#define MEMORY_LENGTH        32;
#define ADDRESS_MASK         0xFFFFFFFC
#define ADDRESS_MASK_INVERSE 0x00000003

typedef unsigned int address;
typedef unsigned int value;
typedef vector<string> assembly;

typedef map<address,value> memory_map;
typedef map<address,assembly> program_map;

typedef map<address,value> program_map_stat;
typedef map<address,value> memory_map_stat;

// \todo all accesses are assumed to be aligned, \
//	the non alligned version is not yet implemented

/** @brief Implements memeory operations.
 
 @author Karel De Vogeleer, Insitute Mines-Telecom
 @date November 2012
 
*/

class Memory {

private:	
	/** @brief Holds a map of the data memory */
	memory_map  my_memory_map;
	
	/** @brief Holds a map of the program memory */
	program_map my_program_map;
	
	/** @brief Holds a map of the get access count of the memory */
	memory_map_stat my_memory_stat_get;
    
    /** @brief Holds a map of the set access count of the memory */
	memory_map_stat my_memory_stat_set;
	
	/** @brief Holds a map of the access count of the program memory */
	program_map_stat my_program_stat;
	
public:
	/** @brief Default constructor
	 */
	 Memory();

    /** @brief Sets a value at a given memory location.
     @param my_address memory location to be altered
     @param stat wether the access shouls be registered for statistics
     @param my_value the value to be stored
    */
	void set(address my_address, value my_value, int stat);
	
	/** @brief Returns a value at a given memory location
     @param my_address the memory location to be retreived
     @param stat wether the access shouls be registered for statistics
     @return the value at location my_address
    */
	value get(address my_address, int stat);
	
	/** @brief Loads data into the memory
     @param my_address the base address to store in the memory
     @param my_value pointer to the data to be stored
     @param length the length of the data to be stored
    */
	void load(address my_address, value* my_value, int length);
	
	/** @brief Sets an assembly code at a given memory location.
     @param my_address memory location to be altered
     @param my_assembly the assembly code to be stored
    */
	void set_program(address my_address, assembly my_assembly);
	
	/** @brief Returns a assembly code at a given memory location
     @param my_address the memory location to be retreived
     @param stat wether the access shouls be registered for statistics
     @return the assembly code at location my_address
    */
	assembly get_program(address my_address, int stat);
	
	/** @brief Dumps the content of the memory to cout 
     @param my_address memory location where the dump should start
     @param length the amount of data to dump
    */
	void dump(address my_address, int length);
    
    /** @brief Dumps the content of the program memory to cout
     */
    void dump_program();
	
	/** @brief Prints the memory access statistics to cout. */
    void print_statistics();
    
};

#endif
