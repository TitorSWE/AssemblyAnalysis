import os

def parse_instruction(instruction):
    left = []
    operand2 = ""
    operand1 = ""
    operator = ""
    for i in range(len(instruction)):
        if (instruction[i] == ","):
            operand2 = instruction[i+2:len(instruction)-1]
            left = instruction[1:i]
    if (len(left)==0) : left = instruction[0:len(instruction)-1]
    for i in range(len(left)):
        if (left[i] == '\t' or left[i]==" "):
            operator = left[0:i]
            operand1 = left[i+1:len(left)]
            break
    return([operator, operand1, operand2])

def parse_block(block):
    L=[]
    file = open(file=block)
    for instruction in file :
        L.append(parse_instruction(instruction))
    return L

registers = {"rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp"}

def definition(instructions,n):
    instruction = instructions[n]
    operand1 = instruction[1]
    if (operand1 in registers):
        print(operand1,n)
        return {operand1}
    return set()

def reference(instructions,n):
    instruction = instructions[n]
    operand2 = instruction[2]
    ref = set()
    for register in registers:
        if (register in operand2):
            ref.add(register)
    return ref

def outlive(tab_registers_lived, n):
    out_lived = set()
    if (n<(len(tab_registers_lived)-1)):
        out_lived = tab_registers_lived[n+1]
    return out_lived

def live(instructions, tab_registers_lived, n):
    out = outlive(tab_registers_lived, n)
    d   = definition(instructions, n)
    r   = reference(instructions, n)
    if (n==8):
        print(d)
        print(out)
        print()
        print((out.difference(d)).union(r))
    return (out.difference(d)).union(r)

def registers_lived(parsed_block):
    n = len(parsed_block)
    live_registers = []
    changed = True
    for i in range(n):
        live_registers.append(set())
    while(changed):
        set_unchanged = 0
        for i in range(n):
            live_n = live(parsed_block, live_registers, i)
            if (len(live_n.difference(live_registers[i])) == 0):
                set_unchanged += 1
            live_registers[i] = live_n
        if (set_unchanged == n):
            changed = False
    return live_registers
#Directory of the block
asm_directory = "../blocks"
block_path = os.path.join(asm_directory, "main_binary_search.txt")

parsed_block = parse_block(block_path)

res = registers_lived(parsed_block)
print(res)

a = {'rax'}
b = {'rbp'}
print(b.difference(a))
