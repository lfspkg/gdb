#as: -J
#objdump: -drwMintel
#name: x86-64 32-bit addressing (Intel mode)
#source: x86-64-addr32.s

.*: +file format .*

Disassembly of section .text:

0+ <.text>:
[ 	]*[a-f0-9]+:	67 48 8d 80 00 00 00 00[ 	]+lea[ 	]+rax,\[eax\+0x0\].*
[ 	]*[a-f0-9]+:	67 49 8d 80 00 00 00 00[ 	]+lea[ 	]+rax,\[r8d\+0x0\].*
[ 	]*[a-f0-9]+:	67 48 8d 05 00 00 00 00[ 	]+lea[ 	]+rax,\[eip\+0x0\].*
[ 	]*[a-f0-9]+:	67 48 8d 04 25 00 00 00 00 	lea[ ]+rax,\[eiz\*1\+0x0\].*
[ 	]*[a-f0-9]+:	67 a0 98 08 60 00    	addr32 mov al,ds:0x600898
[ 	]*[a-f0-9]+:	67 66 a1 98 08 60 00 	addr32 mov ax,ds:0x600898
[ 	]*[a-f0-9]+:	67 a1 98 08 60 00    	addr32 mov eax,ds:0x600898
[ 	]*[a-f0-9]+:	67 48 a1 98 08 60 00 	addr32 mov rax,ds:0x600898
[ 	]*[a-f0-9]+:	67 48 a1 98 08 80 00 	addr32 mov rax,ds:0x800898
[ 	]*[a-f0-9]+:	67 48 8b 1c 25 98 08 80 00 	mov[ ]+rbx,QWORD PTR \[eiz\*1\+0x800898\]
[ 	]*[a-f0-9]+:	67 48 a1 ef cd ab 89 	addr32 mov rax,ds:0x89abcdef
[ 	]*[a-f0-9]+:	67 48 8b 1c 25 ef cd ab 89 	mov[ ]+rbx,QWORD PTR \[eiz\*1\+0x89abcdef\]
[ 	]*[a-f0-9]+:	67 48 b8 ef cd ab 89 00 00 00 00 	addr32 movabs rax,0x89abcdef
[ 	]*[a-f0-9]+:	67 48 bb ef cd ab 89 00 00 00 00 	addr32 movabs rbx,0x89abcdef
[ 	]*[a-f0-9]+:	67 a2 98 08 60 00    	addr32 mov ds:0x600898,al
[ 	]*[a-f0-9]+:	67 66 a3 98 08 60 00 	addr32 mov ds:0x600898,ax
[ 	]*[a-f0-9]+:	67 a3 98 08 60 00    	addr32 mov ds:0x600898,eax
[ 	]*[a-f0-9]+:	67 48 a3 98 08 60 00 	addr32 mov ds:0x600898,rax
[ 	]*[a-f0-9]+:	67 48 a3 98 08 80 00 	addr32 mov ds:0x800898,rax
[ 	]*[a-f0-9]+:	67 48 89 1c 25 98 08 80 00 	mov[ ]+QWORD PTR \[eiz\*1\+0x800898\],rbx
[ 	]*[a-f0-9]+:	67 48 a3 ef cd ab 89 	addr32 mov ds:0x89abcdef,rax
[ 	]*[a-f0-9]+:	67 48 89 1c 25 ef cd ab 89 	mov[ ]+QWORD PTR \[eiz\*1\+0x89abcdef\],rbx
[ 	]*[a-f0-9]+:	67 89 04 25 11 22 33 ff 	mov[ ]+DWORD PTR \[eiz\*1\+0xff332211\],eax
[ 	]*[a-f0-9]+:	67 89 04 65 11 22 33 ff 	mov[ ]+DWORD PTR \[eiz\*2\+0xff332211\],eax
#pass
