import os
import subprocess

#Directory of ASM files
asm_directory = "../asm_function"
count_path = os.path.join(asm_directory, "binarySearch.s")

#Directory of ASM files updated
updated_directory = "../asm_function_modified"
output = "test.s"
modified_path = os.path.join(updated_directory, output)

#Directory of instructions to insert
instructions_directory = "../ressources"
instructions_path = os.path.join(instructions_directory, "instructions.txt")

registers_32_bits = {"rax","rsi","rdi"}
operators = {"mov", "xor", "test", "call", "cmp"}

#Treatment
def treatment(path):
    L=[]
    file = open(file=path)
    for instruction in file:
        left = []
        operand2 = ""
        operand1 = ""
        operator = ""
        for i in range(len(instruction)):
            if (instruction[i] == ","):
                operand2 = instruction[i+2:len(instruction)-1]
                left = instruction[0:i]
        if (len(left)==0) : left = instruction[0:len(instruction)-1]
        for i in range(len(left)):
            if (left[i] == " "):
                operator = left[0:i]
                operand1 = left[i+1:len(left)]
        L.append([operator, operand1, operand2])
    return L

#Find where to add the instruction
def find_where_to_insert(path, instruction):
    operator = instruction[0]
    operand1 = instruction[1]
    index_list = [] # the index start at 0
    if (len(instruction)>2):
        operand2 = instruction[2]
        if (operand2 == "imm"):
            operand2 = "1"
    if (operator == "mov"):
        file = open(path)
        left = ""
        index = 0
        for line in file:
            for i in range(len(line)):
                if (line[i] == ","):
                    left = line[0:i]
            if (len(left) != 0):
                if (operator in left and operand1 in left):
                    index_list.append(index)
            index += 1
    print(index_list)
    return index_list

def insert_instruction(asm_path, modified_path, instruction, amount_to_insert):
    where_to_insert = find_where_to_insert(asm_path, instruction)
    index = 0
    
    with open(asm_path, 'r') as file:
        lines = file.readlines()

    while (index < len(where_to_insert) and index < amount_to_insert):
        # Insert the new line at the specified position
        insert_position = where_to_insert[index]
        line_to_insert = "	" + instruction[0] + " " + instruction[1] + ", " + instruction[2] + "\n"
        lines.insert(insert_position, line_to_insert)
        where_to_insert = [ind + 1 for ind in where_to_insert]
        print(where_to_insert)
        index += 1
    
    with open(modified_path, 'w') as file:
        file.writelines(lines)

treated = treatment(instructions_path)
print(treated)
asm_files = [file for file in os.listdir(asm_directory)]

insert_instruction(count_path, modified_path, treated[11], 3)
#print(find_where_to_insert(count_path,treated[1]))


