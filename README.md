# AssemblyAnalysis

## The Goal:
The aim of this repository is to add some instructions into an asm file without changing the semantic of it.

### Idea 1: Looking for dead variables
The purpose is to find where a variable (here a register) could be changed in order to ultimatly add an intruction involving this variable without changing the semantic of the function. 

Note that this method is based on a syntax analysis. Meaning that by now, there will be other spaces in the code where instructions can be add, but we won't find them with this method. 