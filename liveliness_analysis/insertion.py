import analysis
import os

#Directory of ASM files
asm_directory = "../asm_function"
binary_file_name = "binarySearch.s"
binary = os.path.join(asm_directory, binary_file_name)

#Directory of diffTables
my_diff_tables_directory = "./my_diff_tables"
binary_diff_tables_name = "diff_"+binary_file_name[:len(binary_file_name)-1]+"txt"
binary_diff = os.path.join(my_diff_tables_directory,binary_diff_tables_name)

nodes = analysis.analysis(binary)

def merge(asm_file, diff_table):

    # get graph with liveliness analysis
    nodes = analysis.analysis(asm_file)

    # get instruction to insert
    instruction_to_insert = []
    with open(diff_table, 'r') as file:
        for line in file:
            splitted = line.split(";")
            L = []
            L.append(splitted[0])
            L.append(analysis.Instruction(splitted[1]))
            instruction_to_insert.append(L)

    # Insert call;
    for ins in instruction_to_insert:
        instruction = ins[1]
        operand1 = instruction.operand1
        if (operand1 in analysis.registers):
            for node in nodes :
                if (node.IsVisited and operand1 not in node.RegistersAlived) :
                    node.CanBeInserted.add(instruction)
    #for node in nodes :
        #print(node)
    return nodes

merge(binary, binary_diff)

