import re
from capstone import Cs, CS_ARCH_X86, CS_MODE_64
from keystone import Ks, KS_MODE_64, KS_ARCH_X86


# ==== Init engines

ks = Ks(KS_ARCH_X86, KS_MODE_64) # Init keystone engine

md = Cs(CS_ARCH_X86, CS_MODE_64) # Initialize X86 engine
md.detail = True # Turn on detail mode


# opcode manipulation

def isKnown(inst):
    # Some instructions require thinking before inserting them
    # We're just ingnoring them for now
    sus_list = ["leave", "pop", "cqo"]
    for e in sus_list:
        if e in inst:
            return True
    return False

def replaceMemoryOperand(match):
    # Some string manipulation to clean the instructions (see cleanInst)
    # match.group(0) looks like "-56[rbp]"
    # And I want it to look like "[rbp-56]"
    out = match.group()
    acc = ""
    for c in match.group():
        if c != "[":
            acc += c
        else:
            break
    out = out.replace(acc,"")
    out = out[:-1] + acc + out[-1]
    return out

# 3 secondes
def cleanInst(inst):
    # rewrite a specific kind of instruction
    # in a way that doesn't make Keystone crash
    memory_operand_pattern = r'\-[0-9]*\[[a-z]{2,4}\]'
    return re.sub(memory_operand_pattern, replaceMemoryOperand, inst)

def getInstByteCode(inst):
    # Input: a string of an asm instruction, such as: inst = '\tshr\trax, 63\n'
    # Returns a capstone-compatible sequence of bytes corresponding to the x64 binary code
    # of the input instruction
    out = b""
    if ".cfi" in inst:
        return out
    try:
        # do a "cleaning" pass before encoding:
        # - case where "mov eax, [rbp+0x10]" is actually written as "mov eax, 16[rbp]"
        clean_inst = cleanInst(inst)
        encoding, nb = ks.asm(clean_inst)
        if nb == 0:
            print("{} was not disassembled correctly ! Result is {}".format(inst, encoding))
            input("Press a key to continue..")
            return out
        for b in encoding:
            out += (b).to_bytes(1, byteorder='little')
        return out
    except Exception as e:
        #print("Error: {} while assembling x64 instruction {}, skipping it".format(e, inst))
        return out


def getWrittenReg(inst):
    # inst = '\tshr\trax, 63\n'
    # Returns THE reg that is written by the input instruction
    regs = []
    b_inst = getInstByteCode(inst)
    if len(b_inst) == 0:
        return ""
    for c_inst in md.disasm(b_inst, 0x1000):
        continue # to increment the disassembly line
    regs = c_inst.regs_access()[1] # [0] is read regs, {1] is written
    if len(regs) == 0:
        return ""
    regs = [c_inst.reg_name(e) for e in regs]

    if len(regs) > 1 and "rflags" not in regs and not isKnown(inst):
        print("FOUND AN INSTRUCTION THAT WRITES IN MORE THAN ONE REG !")
        print( "inst {} writes in {}".format(inst, regs))
        input("Press a key to continue..")
        return ""

    return regs[0]

def getReadRegs(inst):
    # inst = '\tshr\trax, 63\n'
    # Returns the set of the read registers
    b_inst = getInstByteCode(inst)
    if len(b_inst) == 0:
        return ""
    for c_inst in md.disasm(b_inst, 0x1000):
        continue # to increment the disassembly line
    regs = c_inst.regs_access()[0]
    return [c_inst.reg_name(e) for e in regs]


JMP_LIST = ["jmp", "jo","jno","js","jns","je","jz","jnz","jne","jb","jnae","jc", "jnb","jae","jnc","jbe","jna","ja","jnbe","jk","jnge","jge","jnk","jle","jng","jg","jnle","jp","jpe","jnp","jpo","jcxz","jexcxz"]

def isAJump(inst):
    # check if the instruction is a jump
    global JMP_LIST
    for j in JMP_LIST:
        if j in inst:
            return True
    return False
