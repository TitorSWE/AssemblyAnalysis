import os
import subprocess



jump_operators = {"jmp", "ja", "jbe", "je", "jg", "jle","jne"}
def_operators  = {"mov", "lea"}
arith_operators = {"add", "sub", "mul", "div"}
logic_operators = {"and", "or", "xor"}
sch_rot_operators = {"shl", "shr", "rol", "ror"}
stack_operators = {"push", "pop"}
ref_operators = arith_operators.union(logic_operators).union(sch_rot_operators).union(stack_operators)

registers_64_bits = {"rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp"}
registers_32_bits = {"eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp"}
registers_16_bits = {"ax", "bx", "cx", "dx", "si", "di", "bp", "sp"}

registers = registers_16_bits.union(registers_32_bits).union(registers_64_bits)

registers_referenced = set()

def transform(register):
    if (len(register) == 2): #register 16 bits
        return "r"+register
    if (register[0] == 'e'): #register 32 bits
        return "r"+register[1:]
    else : return register

class Node:
    def __init__(self, id_line, instruction):
        self.IdLine = id_line
        self.Pred = set()
        self.Succ = set()
        self.Instruction = Instruction(instruction)
        self.IsVisited = False
        self.RegistersAlived = set()
        self.CanBeInserted = set()
    
    def __str__(self):
        return f"Node(IdLine={self.IdLine}, Pred={self.Pred}, Succ={self.Succ}, Instruction={self.Instruction}, IsVisited={self.IsVisited}, RegistersAlived={self.RegistersAlived}, CanBeInserted={self.CanBeInserted})"

class Instruction:
    def __init__(self, instruction):
        #Parsing 
        left = []
        operand2 = ""
        operand1 = ""
        operator = ""
        for i in range(len(instruction)):
            if (instruction[i] == ","):
                operand2 = instruction[i+2:len(instruction)-1]
                if (instruction[0] in {' ', '\t'}) : left = instruction[1:i]
                else : left = instruction[0:i]
        if (len(left)==0) : 
            if (instruction[0] in {' ', '\t'}) : left = instruction[1:len(instruction)-1]
            else : left = instruction[0:len(instruction)-1]
        for i in range(0,len(left)):
            if (left[i] == '\t' or left[i]==" "):
                operator = left[0:i]
                operand1 = left[i+1:len(left)]
                break
        if(len(operator)==0):
            operator = instruction[0:len(instruction)-1]
            if (operator[0]=='\t'):
                operator = operator[1:]

        self.operator = operator
        self.operand1 = operand1
        if (operand1 in registers):
            registers_referenced.add(operand1)
        self.operand2 = operand2
        if (operand2 in registers):
            registers_referenced.add(operand2)
        self.string_instruction = instruction
    
    def __str__(self):
        return f"Instruction(operator={self.operator}, operand1={self.operand1}, operand2={self.operand2})"


def nodeToList(path):

    functions = []

    nodes = []
    dictionaryFunction = {}
    dictionaryBasicBlock = {}
    currentFunction = ""
    functionStart = 0
    functionEnd = 0
    currentBasicBlock = ""
    blockStart = 0
    file = open(file=path)
    lines = file.readlines()
    for i in range(len(lines)) :
        node = Node(i, lines[i])
        nodes.append(node)
        if (node.Instruction.operator[0]!="." and node.Instruction.operator[-1]==":"):
            currentFunction = node.Instruction.operator[:-1]
            functionStart = i+2
        if (node.Instruction.operator[0]=="." and node.Instruction.operator[-1]==":"):
            currentBasicBlock = node.Instruction.operator[:-1]
            blockStart = i+1
            dictionaryBasicBlock[currentBasicBlock]=blockStart
        if (node.Instruction.operator=="ret"):
            functionEnd = i
            dictionaryFunction[currentFunction] = [functionStart, functionEnd]

    # All registers alived for imported function
    for node in nodes :
        if (node.Instruction.operand1 == "" and node.Instruction.operand2 == "" and node.Instruction.operator[-1] == ":"):
            functions.append(node.Instruction.operator[:-1])
    for node in nodes :
        if (node.Instruction.operator == "call" and node.Instruction.operand1 not in functions):
            for r in registers_64_bits:
                node.RegistersAlived.add(r)
            node.RegistersAlived.add("rax")

    return [nodes, dictionaryFunction, dictionaryBasicBlock]


def buildGraph(index, listNode, dictionaryFunction, dictionaryBasicBlock):

    currentNode = listNode[index]
    if ((currentNode.IsVisited == False) and (currentNode.Instruction.operator != "ret")):
        
        currentNode.IsVisited = True

        #basic blocks are not instructons
        if ((currentNode.Instruction.operator[0]==".") and currentNode.Instruction.operator[-1]==":"):
            if (index in listNode[index-1].Succ):
                #link between index-1 and index+1
                listNode[index-1].Succ.remove(index)
                listNode[index].Pred.remove(index-1)
                listNode[index-1].Succ.add(index+1)
                listNode[index+1].Pred.add(index-1)
                buildGraph(index+1, listNode, dictionaryFunction, dictionaryBasicBlock)
        
        else :
        
            if ((currentNode.Instruction.operator == "call") and (currentNode.Instruction.operand1 in dictionaryFunction)):
                indexes = dictionaryFunction[currentNode.Instruction.operand1]
                start = indexes[0]
                end   = indexes[1]
                currentNode.Succ.add(start)
                listNode[start].Pred.add(index)
                listNode[end].Succ.add(index+1)
                listNode[index+1].Pred.add(end)
                buildGraph(index+1,listNode, dictionaryFunction, dictionaryBasicBlock)
                buildGraph(start, listNode, dictionaryFunction, dictionaryBasicBlock)
        
            elif (currentNode.Instruction.operator in jump_operators):
                start = dictionaryBasicBlock[currentNode.Instruction.operand1]
                currentNode.Succ.add(start)
                listNode[start].Pred.add(index)
                buildGraph(start, listNode, dictionaryFunction, dictionaryBasicBlock)
                if (currentNode.Instruction.operator != "jmp"):
                    currentNode.Succ.add(index+1)
                    listNode[index+1].Pred.add(index)
                    buildGraph(index+1, listNode, dictionaryFunction, dictionaryBasicBlock)
        
            else :
                currentNode.Succ.add(index+1)
                listNode[index+1].Pred.add(index)
                buildGraph(index+1, listNode, dictionaryFunction, dictionaryBasicBlock)
    else : 
        return False

#definition only with mov, lea, or xor reg,reg
def definition(node):
    instruction = node.Instruction
    if ((instruction.operator in def_operators) and (instruction.operand1 in registers_referenced)):
        return {transform(instruction.operand1)}
    if ((instruction.operator == "xor") and (instruction.operand1 in registers_referenced) and (instruction.operand1 == instruction.operand2)):
        return {instruction.operand1} 
    return set()

#The rest
def reference(node):
    instruction = node.Instruction
    ref = set()
    for register in registers_referenced:
        if (instruction.operator in ref_operators and register in instruction.operand1):
            ref.add(transform(register))
        elif (register in instruction.operand2):
            ref.add(transform(register))
    return ref

def outlive(nodes, node):
    out_lived = set()
    successors = node.Succ
    for successor in successors:
        out_lived = out_lived.union(nodes[successor].RegistersAlived)
    return out_lived

def live(node, nodes):
    out = outlive(nodes, node)
    d   = definition(node)
    r   = reference(node)
    return (out.difference(d)).union(r)

def registers_lived(nodes):
    n = len(nodes)
    changed = True
    while(changed):
        set_unchanged = 0
        for i in range(n):
            node = nodes[i]
            live_n = live(node, nodes)
            if (len(live_n.difference(node.RegistersAlived)) == 0):
                set_unchanged += 1
            node.RegistersAlived = live_n.union(node.RegistersAlived) 
        if (set_unchanged == n):
            changed = False
    return nodes

def analysis(asmFile):
    res = nodeToList(asmFile)
    listNode = res[0]
    dicoFunction = res[1]
    dicoBasicBlock = res[2]
    file_name = os.path.basename(asmFile)
    function_name = file_name.split("+")[2]
    index_start = dicoFunction[function_name][0] #début de l'analyse
    #index = dicoFunction["main"][0] #si on ne place dans le cadre d'une analyse de programme
    buildGraph(index_start, listNode, dicoFunction, dicoBasicBlock)
    index_end = dicoFunction[function_name][1]
    listNode[index_end].RegistersAlived.add("rax")

    return registers_lived(listNode)


def save_liveliness(asmFile):
    repertoire_sortie = "../asm_function_analysis"
    nodes = analysis(asmFile)
    if not os.path.exists(repertoire_sortie):
        os.makedirs(repertoire_sortie)

    nom_fichier = os.path.basename(asmFile)
    fichier_sortie = os.path.join(repertoire_sortie, nom_fichier)

    with open(asmFile, 'r') as f_entree, open(fichier_sortie, 'w') as f_sortie:
        numero_ligne = 0
        for ligne in f_entree:
            set = nodes[numero_ligne].RegistersAlived
            elements = [str(element) for element in set]
            chaine_resultat = ', '.join(elements)
            nouvelle_ligne = f"{ligne.strip()}" + "    ||     " + "{" + chaine_resultat +"}\n"
            f_sortie.write(nouvelle_ligne)
            numero_ligne += 1


