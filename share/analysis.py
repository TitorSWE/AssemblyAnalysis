########################################
### LIVELINESS ANALYSIS OF REGISTERS ###
########################################

from utils import getWrittenReg, getReadRegs, isAJump

callee_saved_registers = set()


class Node:

    def __init__(self, id_line, instruction_string):

        self.id_line = id_line
        self.pred_nodes = set()
        self.succ_nodes = set()
        self.instruction = instruction_string
        self.is_visited = False
        self.registers_in_lived = set()
        self.registers_out_lived = set()
        self.is_a_label = False
        self.written_register = ""
        self.read_registers = []
        self.is_a_call = False
        
        if (instruction_string[0] == "." and instruction_string[-2] == ":") : 
            self.is_a_label = True
        elif ("call" in instruction_string) : self.is_a_call = True
        # Getting properties read and writtend registers
        if (self.is_a_label == False and self.is_a_call == False) :
            read_registers = getReadRegs(instruction_string)
            self.written_register = getWrittenReg(get_64_bit_register(instruction_string))
            if (len(read_registers)!=0):
                for read in read_registers:
                    self.read_registers.append(get_64_bit_register(read))
    
    def __str__(self):
        return f"Node(IdLine={self.id_line}, Pred={self.pred_nodes}, Succ={self.succ_nodes}, Instruction={self.instruction} , IsVisited={self.is_visited}, RegistersAlived={self.registers_in_lived}, CanBeInserted={self.registers_in_lived})"



def getWhereToInsert(function_asm_code, instructions_to_insert):
    list_nodes = analysis(function_asm_code)
    dictionary_ins_where = {}
    for ins in instructions_to_insert:
        # Is there a register defined 
        written_register = get_64_bit_register(getWrittenReg(ins))
        if (written_register != ""):
            # Enumeration of where the instruction can be inserted
            where_to_insert = []
            for node in list_nodes:
                if (written_register not in node.registers_in_lived):
                    where_to_insert.append(node.id_line)
            dictionary_ins_where[ins] = where_to_insert
    return dictionary_ins_where


# function_asm_code : list where each element is an instruction (string)
# instructions_to_insert : dictionary where the key is an instruction, the value is the amount the instruction has to be inserted
# return : dictionary where the key is the instruction to be inserted, the value is a list of index where the instruction can be inserted

def analysis(function_asm_code) :

    # Building the list of nodes
    list_nodes = getListNodes(function_asm_code)

    # Updating in_lived registers for call instruction 
    list_nodes[-1].registers_in_lived = {"rax"}
    for node in list_nodes:
        if (node.is_a_call):
            node.registers_in_lived = {"rdi", "rsi", "rdx", "rcx", "r8", "r9", "rax", "rcx", "r10","r11"}

    # Getting indexes of a basic block
    dictionary_indexes_bb = getIndexesBasicBlocks(list_nodes)

    # Building the graph (starting in 0)
    buildGraph(list_nodes, dictionary_indexes_bb, 0)

    return registers_lived(list_nodes)

# function_asm_code : list where each element is an instruction (string)
# return : list of object Node reprenting an instruction
def getListNodes(function_asm_code):
    L = []
    for i in range(len(function_asm_code)):
        L.append(Node(i,function_asm_code[i]))
    return L

# list_nodes : representing the list of instruction
# return : a dicitonary where the key is the label of the basic block and
# the value is a list of length 2 corresponding to the indexes start and end of the basic block

def getIndexesBasicBlocks(list_nodes):

    dictionary_indexes_bb = {}
    index_start = 0
    label = ""
    for i in range(len(list_nodes)):
        if (list_nodes[i].is_a_label ):
            # Updating the dictionary
            if (label != "") : dictionary_indexes_bb[label] = [index_start + 1, i-1]
            # Updating the label and the start index
            index_start = i
            label = list_nodes[i].instruction[1:-2]
    dictionary_indexes_bb[label] = [index_start, len(list_nodes)-1]
    return dictionary_indexes_bb

# list_nodes : representing the list of instruction
# dictionary_indexes_bb : index of basic blocs
# index : current index of list_nodes

def buildGraph(list_nodes, dictionary_indexes_bb, index):
    currentNode = list_nodes[index]
    if ((currentNode.is_visited == False) and (currentNode.instruction != "\tret\n")):
        currentNode.is_visited = True
        if (currentNode.is_a_label):
            if (index in list_nodes[index-1].succ_nodes):
                #link between index-1 and index+1
                list_nodes[index-1].succ_nodes.remove(index)
                list_nodes[index].pred_nodes.remove(index-1)
                list_nodes[index-1].succ_nodes.add(index+1)
                list_nodes[index+1].pred_nodes.add(index-1)
            buildGraph(list_nodes, dictionary_indexes_bb, index+1)
        else :
            if (isAJump(currentNode.instruction)):
                label = currentNode.instruction.split("\t")[2][1:-1]
                start = dictionary_indexes_bb[label][0]
                currentNode.succ_nodes.add(start)
                list_nodes[start].pred_nodes.add(index)
                buildGraph(list_nodes ,dictionary_indexes_bb, start)
                if ("jmp" not in currentNode.instruction):
                    currentNode.succ_nodes.add(index+1)
                    list_nodes[index+1].pred_nodes.add(index)
                    buildGraph(list_nodes, dictionary_indexes_bb, index+1)
            else :
                currentNode.succ_nodes.add(index+1)
                list_nodes[index+1].pred_nodes.add(index)
                buildGraph(list_nodes, dictionary_indexes_bb, index+1)
    else : 
        return False

def get_64_bit_register(register_name):
    if len(register_name) == 3 and register_name[0] == 'e':
        return 'r' + register_name[1:]  # Convert from e.g., 'eax' to 'rax'
    elif len(register_name) == 2 and register_name[1] == 'x':
        return 'r' + register_name  # Convert from e.g., 'ax' to 'rax'
    elif len(register_name) == 2 and register_name[1] == 'l':
        return 'r' + register_name[0] + "x"  # Convert from e.g., 'al' to 'rax'
    else:
        return register_name  # Not a valid register name
    
def live(node, list_nodes):
    out = set()
    successors = node.succ_nodes
    for successor in successors:
        out = out.union(list_nodes[successor].registers_in_lived)
    d = {node.written_register}
    r = node.read_registers
    return (out.difference(d)).union(r)

def registers_lived(list_nodes):
    n = len(list_nodes)
    changed = True
    while(changed):
        set_unchanged = 0
        for i in range(n):
            node = list_nodes[i]
            live_n = live(node, list_nodes)
            if (len(live_n.difference(node.registers_in_lived)) == 0):
                set_unchanged += 1
            node.registers_in_lived = live_n.union(node.registers_in_lived) 
        if (set_unchanged == n):
            changed = False
    return list_nodes


