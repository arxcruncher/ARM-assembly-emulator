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

#ifndef FILE_H
#define FILE_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <vector>
#include <algorithm>

#include "memory.h"
#include "processor.h"

using namespace std;



/** @brief Provides file-handler functionalities.
 
 This class reads files that contains a memory map and stack map to be used by the processor later on. 
 @author Karel De Vogeleer, Insitute Mines-Telecom
 @date November 2012
 
*/

class File {
    
private:

     /** @brief Finds the memory address where a label points to in an assembly file
     @param label the label to be found
     @param code pointer to the assembly code
     @return the address to where the label points
     */
	address find_label_address (string label, vector<string>* code);
    
public:
    
    /** @brief Class constructor
     
     @param file_memory name of the memory file to be loaded
     @param file_program name of the program file to be loaded
     @param my_memory the memory map to store the data in
     @param my_processor the processor to initialize
     */
    File(const char *file_memory, const char *file_program, Memory* my_memory, Processor* my_processor);
    
    /** @brief Reads a memory map and loads this into the emulator.
     
     Both the memory and the stack may be specified. \
     Expected format \@address, followed by unsigned integers, 1 per line. \
     &xxx specifies the stack pointer \
	 %xxx specifies the program_counter\
     example: \
	 \\t@35542 \
	 \\t123 \
	 \\t998544 \
	 \\t1233 \
	 \\t&35542
	 \\t%35542
     @param file_memory_map name of the file to be loaded
     @param my_memory the memoery map to store the data in
     @param my_processor the processor to initialize
     @return succes; 1 = success, 0 = fail
     */
    int read_memory_file(const char *file_memory_map, Memory* my_memory, Processor* my_processor);
    
    /** @brief Reads an assembly program from a file.
     
     The file is also parsed, cleaned, and labels are replaced with a memory address
     @param file_program name of the file to be loaded
     @param my_memory the memoery map to store the data in
     @return succes; 1 = success, 0 = fail
     */
    int read_program_file(const char *file_program, Memory* my_memory);

};

#endif
