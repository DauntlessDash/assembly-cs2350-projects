;Using AND logic take input n, m to compute m mod n 
.586
.MODEL FLAT
.CODE
; int modtwo(int n, int m)  ;global procedure
; returns m mod n using AND logic, but-
; if the n is not a power of two then -1 will be returned
_modtwo  PROC
        push    ebp             ; save base pointer
        mov     ebp, esp 		;establish stackframe
		push ebx
		mov eax, [ebp+8]		;gets first parameter: n
		mov ebx, eax		;copying n into ebx
		dec ebx			;(n-1)
		mov ecx, -1			;setting up return for if n is not a multiple of two
		and eax, ebx		;n ^ (n-1)
		jnz exitcode		;jump to exitcode if not equal to zero
			mov eax, [ebp+8]	;gets first parameter: n
			mov ebx, [ebp+12]		;gets second param: m
			dec eax			;getting mask constant (n-1)
			and eax, ebx		;mask constant ^ m = m mod n
			mov ecx, eax		;move result into ecx

		exitcode: 
		mov eax, ecx		;move result into eax or -1 into eax if n was not a multiple of two
		pop ebx
		pop ebp
				
        ret                     ; return      
_modtwo  ENDP

END

