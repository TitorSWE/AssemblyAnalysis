import os
import subprocess

#Directory of ASM files
asm_directory = "../asm_function"
binary = os.path.join(asm_directory, "binarySearch.s")

jump_registers = {"jmp", "ja", "jbe", "je", "jg", "jle","jne"}
class Node:
    def __init__(self, id_line, instruction):
        self.IdLine = id_line
        self.Pred = set()
        self.Succ = set()
        self.Instruction = Instruction(instruction)
        self.IsVisited = False
    
    def __str__(self):
        return f"Node(IdLine={self.IdLine}, Pred={self.Pred}, Succ={self.Succ}, Instruction={self.Instruction}, IsVisited={self.IsVisited})"

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
                left = instruction[1:i]
        if (len(left)==0) : left = instruction[1:len(instruction)-1]
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
        self.operand2 = operand2
    
    def __str__(self):
        return f"Insruction(operator={self.operator}, operand1={self.operand1}, operand2={self.operand2})"


def nodeToList(path):
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
        
            if (currentNode.Instruction.operator in jump_registers):
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

res = nodeToList(binary)
listNode = res[0]
dicoFunction = res[1]
dicoBasicBlock = res[2]
index = dicoFunction["main"][0]
buildGraph(index, listNode, dicoFunction, dicoBasicBlock)
for node in listNode:
    print(node)

