;input n, m to compute m mod n
.586
.MODEL FLAT
.CODE
; int modone(int n, int m)  ;global procedure
; returns m-n*floor(m/n) 
_modone  PROC
        push    ebp             ; save base pointer
        mov     ebp, esp 		;establish stackframe
		push ebx
		mov ebx, [ebp+8]		;gets first parameter: n
		mov eax, [ebp+12]		;gets second param: m
		xor edx,edx			;clear EDX  
		mov ecx, ebx		;move ebx into ecx
		div ecx				;divide m by n
		mov eax,edx			;get remainder from edx and return it

		pop ebx
		pop ebp
				
        ret                     ; return      
_modone  ENDP

END

