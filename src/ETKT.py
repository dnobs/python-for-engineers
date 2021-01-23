# Helper function for searching documentation
# Use example: ("create_.*()", "schematic_api_docs.txt")
# This will search the file and come up with a list of things that are "created"
import re

def extract_unique_strings(regexp_str, file_name, bad_endings=['\n', '(', ' ']):
    
    # this is the primary search function
    regexp = re.compile(r'{}'.format(regexp_str))
    
    # Note: a set is similar to a list, but it only keep unique values
    unique_list = set() 
    
    with open(file_name, encoding='utf-8') as file:
        for line in file:
            if regexp.search(line):
                
                # Found our search term in the line, so  extract the object name
                found_string = line.split('create_')[1]
                
                # remove common but unwanted endings
                for ending in bad_endings:
                    found_string = found_string.split(ending)[0]
                
                unique_list.add(found_string)
                
    return unique_list