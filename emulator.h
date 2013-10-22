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

#ifndef EMULATOR_H
#define EMULATOR_H

#include <iostream>
#include <map>
#include <limits>

#include "file.h"
#include "processor.h"
#include "memory.h"

using namespace std;

#define VERSION 0.1

/** @brief Handles the emulator and all its internal functions.

 @author Karel De Vogeleer, Insitute Mines-Telecom
 @date November 2012
 
*/
class Emulator {
    
private:
    /** @brief Holds a pointer to the memory manager. */
    Memory    *my_memory;
    /** @brief Holds a pointer to the processor. */
    Processor *my_processor;
    
public:
    /** @brief Default constructor. */
    Emulator();
    
    /** @brief Executes one step in the program.
     @warning The emulator must be initialized correctly before it will do something!
     */
    int  execute_one_step();
    
    /** @brief Returns a pointer to the data memory. */
    Memory* get_memory();
    
    /** @brief Returns a pointer to the processor. */
    Processor* get_processor();
    
    /** @brief Prints the content of the memory to cout. */
    void dump_memory();
    
    /** @brief Prints the state of the processor to cout. */
    void dump_processor();
    
    /** @brief Dumps the content of the program memory to cout
     */
    void dump_program();
    
    /** @brief Prints the state of the processor and the memory to cout. */
    void dump_state();
    
    /** @brief Prints the memory access statistics to cout. */
    void print_statistics();
    
    /** @brief Prints the last executed instruction to cout. */
    void print_executed_instruction();
};

#endif
