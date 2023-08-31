The bytecode which is assigned to the Runtime Data Area will be read and executed by the Execution Engine. 

# Interpreter
Interprets the bytecode faster, but executes slowly. 
The disadvantage of the interpreter is that when one method is called multiple times, every time a new interpretation is required.

# JIT Compiler
Neutralizes the disadvantage of the interpreter and compiles the entire bytecode to native
The Execution Engine will be using the help of the interpreter in converting byte code, but when it finds repeated code it uses the JIT compiler. 

- Intermediate Code generator – Produces intermediate code
- Code Optimizer – Responsible for optimizing the intermediate code generated above
- Target Code Generator – Responsible for Generating Machine Code or Native Code
- Profiler – A special component, responsible for finding hotspots, i.e. whether the method is called multiple times or not.

# Garbage Collector
Can be triggered explicitly by calling `System.gc()`, but the execution is not guaranteed.
## Java Native Interface (JNI)
Interacts with the Native Method Libraries and provides the Native Libraries required for the Execution Engine.
## Native Method Libraries
It is a collection of the Native Libraries which is required for the Execution Engine.