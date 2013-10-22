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

#ifndef UTILS_H
#define UTILS_H

#include <iostream>
#include <vector>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

/** @brief Struct for supporting the sort of our map<string,unsigned int>.
*/
template <typename T1, typename T2>
struct less_second {
    typedef pair<T1, T2> type;
    bool operator ()(type const& a, type const& b) const {
        return a.second > b.second;
    }
};

/** @brief Represents a number into a string format
	@param my_cypher the number to be stringefied
	@return a string representation of the cypher
*/
template <class cypher>
static inline string to_integer(cypher my_cypher) {
	stringstream ss;
	ss << my_cypher;
	return ss.str();
}

/** @brief Splits a string, using + as delimiter
	@param my_string the string to be split
	@return the splitted string
*/
static vector<string> split_plus(string my_string) {
	vector<string> my_splitted_string;
    
	char my_command[64];
	int length = my_string.length();
	int end = 0;
	int start = 0;
    
	memcpy(my_command, my_string.c_str(), length);
	my_command[length] = '\0';
	
	for(end = 0; end < length; end++) {
		if(my_command[end] != '+') {
			start = end;
			do {end++;} while(my_command[end] != '+' && my_command[end] != '\0');
			my_command[end] = '\0';
			my_splitted_string.push_back(string(&my_command[start]));
		}
	}
    
	return my_splitted_string;
}

/** @brief Splits a string, using whitespace(s) as delimiters
	@param my_string the string to be split
	@return the splitted string
*/
static vector<string> split(string my_string) {
	vector<string> my_splitted_string;
    
	char my_command[128];
	int length = my_string.length();
	int end = 0;
	int start = 0;
    
	memcpy(my_command, my_string.c_str(), length);
	my_command[length] = '\0';
	
	for(end = 0; end < length; end++) {
		if(!isspace(my_command[end])) {
			start = end;
			do {end++;} while(my_command[end] != '\t' && !isspace(my_command[end]) && my_command[end] != '\0');
			my_command[end] = '\0';
			my_splitted_string.push_back(string(&my_command[start]));
		}
	}
	
    //for(end = 0; end < my_splitted_string.size(); end++)
    //    cout << "\"" << my_splitted_string.at(end) << "\"  ";
    //cout << endl;
    
	return my_splitted_string;
}

/** @brief Trims trailing, leading, and trailing colons in a string
	@param str the string to be trimmed
	@return a pointer to the trimmed string
*/
static char* trim_white_spaces(char *str) {
	char *end;
	int i = 0;
	
	// trim leading space
	while(isspace(*str)) str++;
	
	if(*str == 0)  // All spaces?
		return str;
		
	// trim trailing space
	end = str + strlen(str) - 1;
	while(end > str && isspace(*end)) end--;
	
	// remove possible trailing colons
	if(*end == ':' && *str == '.') end--;
	//if(*str == '.') end--;
	
	// write new null terminator
	*(end+1) = 0;
	
	return str;
}

/** @brief Detects if argument is a number or register.
	@param arg the argument to be evaluated
	@return indicates a register; 1 = register, 0 = number
*/
static inline int is_register(string arg) {
	char* pointer = (char*)arg.c_str();
	int i = 0;
	// WARNING: we asume that the # will appear within the first 3 chars
	// tricky undertaken I must say :s - but boosts performance I guess
	while (i < 3) {
		if(pointer[i] == '#') return 0;
		i++;
	}
    //cout << "Register detected ... " << arg << endl;
	return 1;
}

/** @brief Removes unneeded characters arguments ([],#).
	@param arg pointer to the string that needs to be cleaned
	@return pointer to the cleaned string
*/
static inline char* clean_argument(char* arg) {
	// removes brackets and #
	if(!isalpha(arg[0])) arg++;
	// removes trailing stuff
	if(!isalpha(arg[strlen(arg)-1]) && !isdigit(arg[strlen(arg)-1]))
	arg[strlen(arg)-1] = '\0';
	return arg;
}

/** @brief Extracts register from a littered string.
	@param arg pointer to the string that needs to be identified
	@return register name detected
	@warning ARMv7 specific!
*/
static inline reg get_register(const char* arg) {
	char* iter = (char*)arg;
	while (*iter != '\0') {
		switch(*iter) {
			case 'r' : {
				iter++;
				// do some ASCI trick, very case specific!
				// 48 is the ASCII number for the cypher 0
				return (reg)(*iter-48);
			}
			case 'f' : { return fp; }
			case 'i' : { return ip; }
			case 's' : {
				switch(*(++iter)) {
					case 'p' : { return sp; }
					case 'l' : { return sl; }
				}
			}
			case 'l' : { return lr; }
			case 'p' : { return pc; }
		}
		iter++;
	}	
	return not_defined;
}

/** @brief Extracts an integer from a littered string.
	@param arg pointer to the string that needs to be identified
	@return integer deteceted
*/
static inline int get_value(const char* arg) {
	// \todo must also handle negative numbers!!!
	char* iter = (char*)arg;
	while (*iter != '\0') {
		if(*iter == '#') {
			iter++;
			char* end = iter;
			while (isdigit(*end)) end++;
			*(++end) = '\0';
			return atoi(iter);
		}
		else if(isdigit(*iter)) {
			char* end = iter;
			while (isdigit(*end)) end++;
			*(++end) = '\0';
			return atoi(iter);
		}
		iter++;
	}	
	return 0;
}

#endif
