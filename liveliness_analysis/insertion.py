import analysis
import os

my_diff_tables_dir = "./my_diff_tables"
tests_dir = "./tests"
out_dir = "./modified"

def insert_for_all(my_diff_tables_dir,tests_dir):

    my_tests_files = os.listdir(tests_dir)

    for tests_file in my_tests_files:
        # Trouver la paire difftable et asm
        tests_file_path = os.path.join(tests_dir, tests_file)
        tests_file_parts = tests_file.split('+')
        diff_file_name = '+'.join([tests_file_parts[0], tests_file_parts[2], tests_file_parts[5]])
        diff_file_name = diff_file_name[:len(diff_file_name)-2] + "_inst_dict"
        diff_file_path = os.path.join(my_diff_tables_dir, diff_file_name)

        if os.path.exists(diff_file_path):
            nodes = insert_instructions_in_nodes(tests_file_path, diff_file_path)
            chemin_du_fichier_modifie = os.path.join(out_dir, tests_file)
            with open(chemin_du_fichier_modifie, 'w') as fichier_modifie:
                for node in nodes :
                    fichier_modifie.write(node.Instruction.string_instruction)


def parsing_diff_tables(diff_file_path):
    instructions_to_insert = []
    with open(diff_file_path, 'r') as fichier:
        for ligne in fichier:
            L = []
            splitted_ligne = ligne.split(";")
            L.append(int(splitted_ligne[0]))
            longueur_ins = len(splitted_ligne[1])
            L.append(analysis.Instruction(splitted_ligne[1][:longueur_ins]))
            instructions_to_insert.append(L)
    return instructions_to_insert


def insert_instructions_in_nodes(tests_file_path, diff_file_path):

    instructions_to_insert = parsing_diff_tables(diff_file_path)    #Parsing
    instruction_nodes = analysis.analysis(tests_file_path)  # liveliness analysis
    amount_instructions = len(instruction_nodes)

    for ins in instructions_to_insert:
        instruction = ins[1]
        if (instruction.operand1 in analysis.registers):
            reg = instruction.operand1
            index_instruction = 0
            amount_to_insert = ins[0]

            while(amount_to_insert > 0 and index_instruction < amount_instructions):
                node = instruction_nodes[index_instruction]
                if (node.IsVisited and reg not in node.RegistersAlived):
                    node.Instruction.string_instruction = instruction.string_instruction + "\n"  + node.Instruction.string_instruction
                    amount_to_insert = amount_to_insert - 1
                index_instruction = index_instruction + 1

    return instruction_nodes



insert_for_all(my_diff_tables_dir, tests_dir)


