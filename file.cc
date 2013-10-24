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

#include "file.h"
#include "utils.h"

File::File(const char *file_memory, const char *file_program, Memory* my_memory, Processor* my_processor, int print_links) {
    read_memory_file(file_memory, my_memory, my_processor);
    read_program_file(file_program, my_memory);
    debug = print_links;
}

address File::find_label_address(string label, vector<string>* code) {
	
	int my_address = 0;
	
	string label_alt = label;
	label_alt.append(":");
	
	for(vector<string>::iterator iter = (*code).begin(); iter != (*code).end(); ++iter) {
		if((*iter).at(0) != '.' && (*iter).at(0) != '@' && (*iter).at((*iter).length()-1) != ':')
			my_address += 4;
		else {
			if(strcmp((*iter).c_str(), label.c_str()) == 0 || strcmp((*iter).c_str(), label_alt.c_str()) == 0) {
				if (debug)
					cout << "Label " << label << " on-line @ " << my_address << endl;
				return my_address;
			}
			
		}
	}
    
	return -1;
}

int File::read_program_file(const char *file_program, Memory* my_memory) {

	char my_temp_string[1024];
	int my_address = 0;
	
	cout << "Reading program from file: " << file_program << " ..." << endl << endl;
	
	ifstream infile;
	infile.open (file_program);

	string my_line;
	vector<string> my_program_vector;
	
	while (getline(infile, my_line)) {
		// copy string to temporary array for processing
		memcpy(my_temp_string, my_line.c_str(), my_line.length());
		// we don't want any trouble :p
		my_temp_string[my_line.length()] = '\0';
		// clean string
		char* my_trimmed_string = trim_white_spaces(my_temp_string);
		my_program_vector.push_back(string(my_trimmed_string));
	}
    
	// \todo perhaps faster to build a map of labels instead of reiterating all the time
	for(vector<string>::iterator iter = my_program_vector.begin(); iter != my_program_vector.end(); ++iter) {        
		if((*iter).at(0) != '.' && (*iter).at(0) != '@') {
			// resilve .xxx references
			if((*iter).at(0) == 'b' && (*iter).at((*iter).length()-1) != ':') {
				vector<string> my_split_command = split(*iter);
				//cout << "Looking for label " << my_split_command.at(1) << endl;
				int my_label_address = find_label_address(my_split_command.at(1), &my_program_vector);
                // if the label is not found just leave the label itself, probably a system call
                if(my_label_address != -1)
                    my_split_command.at(1) = string(to_integer<int>(my_label_address));
				my_memory->set_program(my_address, my_split_command);
				my_address += 4;
			}
			// resolve .xxx+# references
			else if((*iter).find("+") != string::npos && (*iter).find(".") != string::npos) {
				vector<string> my_split_command = split(*iter);
				//cout << "Finding ~~~~~~~~~` " << *iter << endl;

				for(int k = 0; k < my_split_command.size(); k++) {
					if(my_split_command.at(k).find("+") != string::npos) {
						//cout << "Finding " << my_split_command.at(k) << endl;
						vector<string> my_split_operand = split_plus(my_split_command.at(k));
						int offset = atoi(my_split_operand.at(1).c_str());						
						vector<string>::iterator my_ref = find(my_program_vector.begin(), my_program_vector.end(), my_split_operand.at(0));
						if(my_ref != my_program_vector.end()) {
							//cout << "Found ref " << my_split_operand.at(0) << " " << offset << endl;
							my_ref += offset/4 + 1;
							//cout << "Found ref " << *my_ref << " " << endl;
							vector<string> my_split_word = split(*my_ref);
							//cout << "Found ref " << my_split_word.at(1) << " " << endl;
							
							if (debug)
								cout << "Label " << my_split_command.at(k) << " replaced by #" << my_split_word.at(1) << endl;
								
							my_split_command.at(k) = my_split_word.at(1).insert (0, 1, '#');
							my_memory->set_program(my_address, my_split_command);
							my_address += 4;
						}
						else
							cerr << "Unable to find word reference to " << my_split_operand.at(0) << " :s" << endl;
					}					
				}
			}
			else if((*iter).find(".") != string::npos) {
				vector<string> my_split_command = split(*iter);
				//cout << "Processing label " <<  my_split_command.at(2) << endl;
				vector<string>::iterator my_ref = find(my_program_vector.begin(), my_program_vector.end(), my_split_command.at(2));
				if(my_ref != my_program_vector.end()) {
					my_ref++;
					vector<string> my_split_word = split(*my_ref);
					//cout << "Found ref " << my_split_word.at(1) << " " << endl;
					
					if (debug)
						cout << "Label " << my_split_command.at(2) << " replaced by #" << my_split_word.at(1) << endl;
						
					my_split_command.at(2) = my_split_word.at(1).insert (0, 1, '#');
					my_memory->set_program(my_address, my_split_command);
					my_address += 4;
				}
				else
					cerr << "Unable to find word reference to " << my_split_command.at(2) << " :s" << endl;
			}
			else {
				if((*iter).at((*iter).length()-1) != ':') {
                    my_memory->set_program(my_address, split(*iter));
                    my_address += 4;
                }
			}
		}
	}
    
    cout << endl;
	
	infile.close();
}

int File::read_memory_file(const char *file_memory, Memory* my_memory, Processor* my_processor) {
	
    cout << "Reading memory map from file: " << file_memory << " ..." << endl;
    
	ifstream infile;
	infile.open (file_memory);

	string my_line;
	
	address my_current_address  = 0;
	address my_stack_pointer    = 0;
	address my_program_counter  = 0;
	address my_link_register    = 0;
    address my_frame_pointer    = 0;
    address my_stack_limit      = 0;
    address my_intra_procedure  = 0;
	address my_value            = 0;
	
	while (getline(infile, my_line)) {
		if(my_line.length() > 0) {
			switch (my_line.at(0)) {
				case '@' : {
                    if(my_line.at(1) == 'm') {
                        istringstream iss(my_line.substr(3,my_line.length()));
                        iss >> my_current_address;
                        //cout << "Current address set to " << my_current_address << endl;
                        break;
                    }
                    else if(my_line.substr(1,2).compare("pc") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_program_counter;
                        //cout << "Saved pc " << my_program_counter << endl;
                        my_processor->set_program_counter(my_program_counter);
                        break;
                    }
                    else if(my_line.at(1) == 'r') {
                        char reg = my_line.at(2);
                        unsigned int my_value;
                        // -48 (see ASCII) becuase register count start at 0
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_value;
                        my_processor->set_register((int)(reg-48), my_value);
                    }
                    else if(my_line.substr(1,2).compare("sp") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_stack_pointer;
                        //cout << "Saved sp " << my_stack_pointer << endl;
                        my_processor->set_stack_pointer(my_stack_pointer);
                        break;
                    }
                    else if(my_line.substr(1,2).compare("lr") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_link_register;
                        //cout << "Saved sp " << my_stack_pointer << endl;
                        my_processor->set_link_register(my_link_register);
                        break;
                    }
                    else if(my_line.substr(1,2).compare("fp") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_frame_pointer;
                        //cout << "Saved sp " << my_stack_pointer << endl;
                        my_processor->set_frame_pointer(my_frame_pointer);
                        break;
                    }
                    else if(my_line.substr(1,2).compare("sl") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_stack_limit;
                        //cout << "Saved sp " << my_stack_pointer << endl;
                        my_processor->set_stack_limit(my_stack_limit);
                        break;
                    }
                    else if(my_line.substr(1,2).compare("ip") == 0) {
                        istringstream iss(my_line.substr(4,my_line.length()));
                        iss >> my_intra_procedure;
                        //cout << "Saved pc " << my_program_counter << endl;
                        my_processor->set_intra_procedure(my_intra_procedure);
                        break;
                    }
                    break;
                }
                case '#' : {
					// Comments, ignore this part in the file
					break;
				}
				// all the rest in the file are memory entries
				default : {
					unsigned int my_value;
					istringstream iss(my_line);
				
					iss >> my_value;
					my_memory->set(my_current_address, my_value, 0);
				
					// We increase by 4 because each line in the file is assumed to be an unsigned int
					my_current_address += 4;
				}
			}
		}
	}
	
	infile.close();
	
}
