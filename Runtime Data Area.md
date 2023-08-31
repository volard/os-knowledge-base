# Method Area
All the class level data will be stored here, including static variables. 
There is only one method area per JVM, and it is a shared resource.

# Heap Area
All the Objects and their corresponding instance variables and arrays will be stored here. 
One Heap Area per JVM. 
Since the Method and Heap areas share memory for multiple threads, the data stored is **not thread safe**.

# Stack Area
For every thread, a separate runtime stack will be created. 
For every method call, one entry will be made in the stack memory which is called as `Stack Frame`. All local variables will be created in the stack memory. 
It's **thread safe** since it is not a shared resource. 
## Local Variable Array
Related to the method how many local variables are involved and the corresponding values will be stored here.
## Operand stack
If any intermediate operation is required to perform, operand stack acts as runtime workspace to perform the operation.
## Frame data
All symbols corresponding to the method is stored here. In the case of any exception, the catch block information will be maintained in the frame data.

# PC Registers
Each thread will have separate PC Registers, to hold the address of current executing instruction once the instruction is executed the PC register will be updated with the next instruction.

# Native Method stacks
Native Method Stack holds native method information. For every thread, a separate native method stack will be created.