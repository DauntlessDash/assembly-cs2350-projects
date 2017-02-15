EXTRN _printf:PROC
.STACK 4096 ; reserve 4096-byte stack
.DATA ; reserve storage for data
msg1 db "Hello world", 10, 0 ;strings with new line and
msg2 db "This is cs2350", 10, 0 ;and null terminated
format db "%s%s", 0
.CODE
main PROC
push offset msg2
push offset msg1
push offset format
call _printf
add esp, 12
 ret 0
main ENDP
END