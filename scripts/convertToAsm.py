import os
import subprocess

# Source directory containing C files
source_directory = "../c_function"

# Destination directory to store ASM files
destination_directory = "../asm_function"

# Ensure the destination directory exists
os.makedirs(destination_directory, exist_ok=True)

# Get a list of C files in the source directory
c_files = [file for file in os.listdir(source_directory) if file.endswith(".c")]

# Compile each C file to ASM and save in the destination directory
for c_file in c_files:
    # Remove the .c extension and add .asm
    asm_file = os.path.splitext(c_file)[0] + ".asm"
    
    # Full paths to the source and destination files
    source_path = os.path.join(source_directory, c_file)
    destination_path = os.path.join(destination_directory, asm_file)
    
    # Use the C compiler to generate ASM code
    try:
        result = subprocess.run(["gcc", "-S", "-o", destination_path, source_path], capture_output=True, text=True)
        if result.returncode == 0:
            print(f"Successfully generated {asm_file}")
        else:
            print(f"Error generating {asm_file}: {result.stderr}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")
