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

#ifndef PROCESSOR_H
#define PROCESSOR_H

#include <iostream>
#include <map>
#include <iomanip>
#include <algorithm>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <bitset>

#include "memory.h"

using namespace std;

// 4 bytes for a 32 bit systen
#define PROCESSOR_REGISTER_WIDTH 4
#define TRACK 1

// masks for the CPSR register
#define SIGN_FLAG       0x80000000
#define ZERO_FLAG       0x40000000
#define CARRY_FLAG      0x20000000
#define OVERFLOW_FLAG   0x10000000
#define CPSR_FLAGS      0xF0000000
#define CPSR_MODE       0x0000001F
#define CPSR_I          0x00000080
#define CPSR_F          0x00000040
#define CPSR_T          0x00000020

#define MSB_MASK        0x80000000
#define LSB_MASK        0x00000001


// assumes that an unsigned int is 4 bytes long,
// must be the length as defined by PROCESSOR_REGISTER_WIDTH above
typedef unsigned int processor_register;
typedef processor_register* processor_state;

/** @brief Registers of the processor
 */
enum processor_arch {
	r0 = 0,			// 1
    r1,				// 2
    r2,				// 3
    r3,				// 4
    r4,				// 5
    r5,				// 6
    r6,				// 7
    r7,				// 8
    r8,				// 9  (not available in Thumb mode)
    r9,				// 10 (not available in Thumb mode)
    r10,			// 11 (not available in Thumb mode)
    r11,			// 12 (not available in Thumb mode)
    r12,			// 13 (not available in Thumb mode)
    r13,			// 14
    r14,			// 15
    r15,			// 16
    r16,			// 17
    r17,			// 18
    // we repeat the "alternative" names for the registers
    a1 = 0,
    a2,
    a3,
    a4,
    v1,
    v2,
    v3,
    v4,
    v5,
    v6,
    sl = 10,		// 11 (r10) Stack limit
    fp,				// 12 (r11) Frame pointer
    ip,				// 13 (r12) Intra-procedure call scratch register
    sp,				// 14 (r13) Lower end of current stack frame
    lr,				// 15 (r14) Subroutine link register
    pc,				// 16 (r15) Program counter
    cpsr,			// 17 (r18) Current program status register
    xxxx,			// 18 (r19) Other processor status register
    register_count,
    not_defined
};

/** @brief Instruction labels, used for tracking statistics.
 */
enum isa {
    i_push = 0,
    i_pop,
    i_sub_r,
    i_sub_v,
    i_mov_r,
    i_mov_v,
    i_mvn_r,
    i_mvn_v,
    i_cmp_r,
    i_cmp_v,
	i_add,
	i_add_r,
	i_add_v,
	i_ldr_r,
    i_ldr_v,
    i_ldr_rr,
    i_str_r,
    i_str_v,
    i_ble,
    i_bgt,
    i_bge,
    i_blt,
    i_beq,
    i_bne,
    i_bcs,
    i_bcc,
    i_bmi,
	i_bpl,
	i_bvs,
	i_bvc,
	i_bhi,
	i_bls,
	i_bal,
    i_bl,
    i_blx,
    i_bx,
    i_b,
    i_asr,
    i_asl,
    i_lsr,
    i_lsl_r,
    i_lsl_v,
    i_eor,
    i_eor_r,
    i_orr,
    i_orr_r,
    i_and,
    i_and_r,
    i_bic,
    i_tst_r,
    i_tst_v,
    instruction_count
};

/** @brief Instruction table, used for declaring statistics.
 */
struct instruction {
    char name[8];
    char arguments[16];
    int count;
    void* function;
};

typedef processor_arch reg;

/** @brief Implements the behaviour of the processor, e.g., the ISA

 @author Karel De Vogeleer, Insitute Mines-Telecom
 @date November 2012
 
*/
class Processor {
    
private:

	/** @brief Reference to the memory manager. */
	Memory *my_memory;

	/** @brief holds the results of some operations for flags probing purposes.*/
	unsigned long int instruction_results;

    /** @brief Counts the total number of instructions executed. */
	unsigned int total_instruction_count;

	/** @brief Holds the state of the processor at any moment. */
    processor_state my_registers;
    
    /** @brief Holds all the instructions available in the emulator */
    vector<instruction> my_instructions;
    
    /** @brief Holds the count per instruction. */
    unsigned int* my_instruction_count;
    
    /** @brief Stores the previous pc value. */
    address previous_pc;
    
    /** @brief Prints an opcode to cout without endl
     @param opcode the code to be printed
     */
    void print_opcode(assembly opcode);
    
    /** @brief Loads the ISA in the processor
     */
    void built_instruction_table();
    
    /** @brief Loads a single instruciton definition into the processor
     */
    void add_instruction(const char* name, const char* args, void* reference) {
        struct instruction temp;
        strcpy(&temp.name[0], name);
        strcpy(&temp.arguments[0], args);
        temp.count = 0;
        temp.function = reference;
        my_instructions.push_back(temp);
    }
	
    /** @brief System function implementation */
    void memcpy();
    
    /** @brief Sets the processor flags for a given value.
     @param a first value
     @param operation the operation to be performed [+-]
     @param b second value
     */
    void set_flags_for(value a, char operation, value b);
    
	// here come the instructions!!!!
	// instructions handled
	// push reg, ...
	// sub  reg, reg, reg
	// sub  reg, reg, #
    
    // \todo this implementation thinks that each instruction is \
    // 1 byte long in the program memory, this is find, but not \
    // realistic... This should be changed to be correct.
    
    /** @brief ARM assembly \e push */
    void push(vector<string>* my_command);
    
    /** @brief ARM assembly \e pop */
    void pop(vector<string>* my_command);
    
    /** @brief ARM assembly \e sub */
    void sub(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e sub (overload) */
    void sub(reg a, reg b, value c);
    
    /** @brief ARM assembly \e mov */
    void mov(reg a, reg b);
    
    /** @brief ARM assembly \e mov (overload) */
    void mov(reg a, value b);

    /** @brief ARM assembly \e mov */
    void mvn(reg a, reg b);
    
    /** @brief ARM assembly \e mov (overload) */
    void mvn(reg a, value b);
    
    /** @brief ARM assembly \e cmp*/
    void cmp(reg a, reg b);
    
    /** @brief ARM assembly \e cmp (overlead)*/
    void cmp(reg a, value b);
    
    /** @brief ARM assembly \e add */
    void add(reg a, reg b);
    
    /** @brief ARM assembly \e add (overload)*/
    void add(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e add (overlead) */
    void add(reg a, reg b, value c);

    /** @brief ARM assembly \e ldr */
    void ldr(reg a, value b);

	/** @brief ARM assembly \e ldr */
    void ldr(reg a, reg b);

	/** @brief ARM assembly \e ldr (overload) */
    void ldr(reg a, reg b, value c);

	/** @brief ARM assembly \e ldr (overload) */
    void ldr(reg a, reg b, reg c);

    /** @brief ARM assembly \e str */
    void str(reg a, reg b);
    
	/** @brief ARM assembly \e str (overload) */
    void str(reg a, reg b, value c);
    
    /** @brief ARM assembly \e ble */
    void ble(value a);
    
    /** @brief ARM assembly \e bgt */
    void bgt(value a);
    
    /** @brief ARM assembly \e blt */
    void blt(value a);
    
    /** @brief ARM assembly \e bge */
    void bge(value a);

    /** @brief ARM assembly \e beq */
    void beq(value a);
    
    /** @brief ARM assembly \e bne */
    void bne(value a);

    /** @brief ARM assembly \e bcs */
    void bcs(value a);
    
    /** @brief ARM assembly \e bcc */
    void bcc(value a);
    
    /** @brief ARM assembly \e bl */
    void bl(value a);
    
    /** @brief ARM assembly \e bmi */
    void bmi(value a);
    
    /** @brief ARM assembly \e bpl */
    void bpl(value a);
    
    /** @brief ARM assembly \e bvs */
    void bvs(value a);
    
    /** @brief ARM assembly \e bvc */
    void bvc(value a);
    
    /** @brief ARM assembly \e bhi */
    void bhi(value a);
    
    /** @brief ARM assembly \e bls */
    void bls(value a);
    
    /** @brief ARM assembly \e bal */
    void bal(value a);

    /** @brief ARM assembly \e blx */
    void blx(value a);
    
    /** @brief ARM assembly \e bx */
    void bx(const char* a);
    
    /** @brief ARM assembly \e b */
    void b(value a);

    /** @brief ARM assembly \e asr */
    void asr(reg a, reg b, value c);
    
    /** @brief ARM assembly \e asl */
    void asl(reg a, reg b, value c);
    
    /** @brief ARM assembly \e lsr */
    void lsr(reg a, reg b, value c);
    
    /** @brief ARM assembly \e lsl */
    void lsl(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e lsl (overload)*/
    void lsl(reg a, reg b, value c);
    
    /** @brief ARM assembly \e eor */
    void eor(reg a, reg b);
    
    /** @brief ARM assembly \e eor */
    void eor(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e orr */
    void orr(reg a, reg b);
    
    /** @brief ARM assembly \e orr (overload) */
    void orr(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e and (the "o" is there for a reason) */
    void ando(reg a, reg b);
    
        /** @brief ARM assembly \e and (overload, the "o" is there for a reason) */
    void ando(reg a, reg b, reg c);
    
    /** @brief ARM assembly \e bic */
    void bic(reg a, reg b);

    /** @brief ARM assembly \e tst */
    void tst(reg a, reg b);

    /** @brief ARM assembly \e tst (overload) */
    void tst(reg a, value b);
    
public:

	/** @brief Default constructor of processor
	 @param my_new_memory Reference to the memory manager
     */
	Processor(Memory *my_new_memory);
    
    /** @brief Prints the state of the processor to cout
     */
    void dump();
    
    /** @brief Sets the value in a specific r1-8 register of the processor.
     @param reg the register to store the value in
     @param my_value the value to be stored in the system
     */
    void set_register(int reg, value my_value);
    
    /** @brief Sets the value of the \e program \e counter in the processor.
     @param my_address the address to be set
     */
    void set_program_counter(address my_address);
    
    /** @brief Sets the value of the \e stack \e pointer in the processor.
     @param my_address the address to be set
     */
    void set_stack_pointer(address my_address);
    
    /** @brief Sets the value of the \e frame \e pointer in the processor.
     @param my_address the address to be set
     */
    void set_frame_pointer(address my_address);
    
    /** @brief Sets the value of the \e intra \e procedure \e call scratch register in the processor.
     @param my_address the address to be set
     */
    void set_intra_procedure(address my_address);
    
    /** @brief Sets the value of the \e link \e register in the processor.
     @param my_address the address to be set
     */
    void set_link_register(address my_address);
    
    /** @brief Sets the value of the \e stack \e limit in the processor.
       @param my_address the address to be set
     */
    void set_stack_limit(address my_address);
    
    /** @brief Executes the instruction pointed to be the program counter
     @return more work to do; 1 = more work, 0 = no more work
     */
    int execute_one_step();
    
    /** @brief Prints the last executed instruction to cout. */
    void print_executed_instruction();
    
    /** @brief Prints the next instruction to be executed to cout. */
    void print_next_instruction();  
    
    /** @brief Prints the instruction access statistics to cout. */
    void print_statistics();

};

#endif
