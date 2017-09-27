# CS 2350 - Computer Organization and Assembly Language


## Synopsis

This repository contains several projects I completed for my class on the organization of single-processor computer systems via Assembly Language. Topics addressed include basic concepts of computer architecture and organization, assembly programming, interfacing assembly with High Level Languages, sub-procedures and macros, I/O devices, interrupts, and multitasking issues.

## Project 1

In this project the EAX register is altered from random characters to containing the information that was originally in memory as “number”.  Then the registers change once again as the number in EAX is added to 158 and the sum is moved into EAX, this changes the flag register as well to indicate that there was no overflow. After this the sum is moved into the memory address reserved for “sum”. Then EAX is changed to zero and the program is ended. Throughout this process the register EIP is being changed after each line to indicate where the next instruction set is located.


## Project 2

The primary purpose of this project was to implement the desired function in both C and Assembly in order to study the differences. Initially the program requests the user to input both n and k. After gathering this information and storing it the program checks if the values are equal to each other, and if so it proceeds to do the factorial of n and outputs that as the final result. If both numbers are not equal the program runs a loop that will go through each (n-k) and multiply it with the previous sum, and then decrement k. After doing this loop the program will then do the final n times the sum of all the previous multiplications. This total will then be displayed to the user.


## Project 3

### Overall Design: 
The overall design of the project is the utilization of a C program and two assembly modules to display a table of m mod n for a selection of k values from 2 to 25. Each module has a different method of computing m mod n and the program displays both of their results along with all other relevant data into a table. The c program is used to run the modules and build the table of data. The first module computes m mod n using division. The second program computes m mod n using AND logic, but cannot compute if n is not a power of 2. Whenever this second module cannot compute m mod n it returns -1. The end result is a table of data which includes the current k, m, n, solution using module one, and the solution using module two for k values 2 to 25

### C program: 
The design for my C program was fairly simple as it was only used to execute my modules and display their results. The program displays a small message that tells the user what the program does and also informs the user that the second module returns -1 whenever it is unable to compute the modulus for that particular set of m and n (whenever n is not a power of 2). After displaying these messages the program then runs through a loop of k from 2 to 25 and uses that k value to set the n to 4*k and m to k. The program then sends this m and n to each of the modules and saves their return values. Then the program displays the current k, n, m, result from program 1, and result from program 2. This continues for all the values of k from 2 to 25 and creates a table of the data. The program then waits for a keypress before terminating. 

### Assembly Module 1: 
The first assembly module takes the input given to it from the C program (the current m and n) and uses it to compute m mod n. The program establishes a stack frame and then loads the m and n into registers. EDX is cleared to make room for the remainder. The division function is then used on m and n and the remainder is taken from EDX and moved into EAX. The stack frame is popped and the value in EAX is returned to the waiting C program. 

### Assembly Module 2: 
The second assembly module takes the input given to it from the C program (the current m and n) and uses it to compute m mod n, but instead utilizes AND logic to compute the result. Because the module uses AND logic it can only compute the modulus if n is a power of two. First, the program establishes a stack frame and loads n into a register. This n is copied to another register and then decremented in order to get (n-1). ECX is given a value of -1 for the instance in which the result is not a power of two. We now do the AND logic to give us the result of n ^ (n-1). The program checks if this value is zero, and if it is zero this means that the n is a power of two and the modulus can be computed. If the value is not zero then the program skips to the end and returns -1 to indicate to the C program and user that the n was not a power of two. However when n is a power of two the program continues and n and m are moved into registers. The n is decremented to give us (n-1) again and then we do m^(n-1). The result of m^(n-1) is then put into the ecx register to overwrite the -1. The program then moves whatever value is in ECX (a -1 if not a power of two or the result of m mod n) into EAX. The stack frame is popped and the value in EAX is returned to the waiting C program. 




