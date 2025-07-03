# ⚙️ Microprocessor Lab – Assembly Language Codes

This repository contains assembly language programs and exercises written during my **Microprocessors** course.  
It includes basic to intermediate level programs, mainly targeting Intel 8086 architecture (or similar), and aims to demonstrate how to interface hardware and implement algorithms at the assembly level.

---

## 📌 About

This repo serves as:
- A learning resource for students starting with assembly programming
- A collection of tested code examples for classic microprocessor experiments
- Personal notes and well-commented codes to understand assembly logic and structure

All codes are written in **assembly language**, mostly using MASM / TASM / NASM syntax.

---

- Basic arithmetic (addition, subtraction, multiplication, division)
- Logical operations (AND, OR, NOT, XOR)
- Data transfer instructions
- Branching and looping
- String handling routines
- Delay generation

  Install assembler tools as listed in requirements.txt.

Assemble and run the .asm files using your chosen assembler (e.g., MASM / TASM / NASM).

Example (for MASM / Windows):

bash
Copy
Edit
ml addition.asm
addition.exe
Example (for NASM / Linux):

bash
Copy
Edit
nasm -f elf addition.asm
ld -m elf_i386 -s -o addition addition.o
./addition
⚠️ Adapt commands depending on your OS and assembler.
