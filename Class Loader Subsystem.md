It does dynamic class loading functionality
It loads, links. and initializes the class file when it refers to a class for the first time at runtime, not compile time. 

# Stages
## Loading
1. Boot Strap `ClassLoader` – Responsible for loading classes from the bootstrap `classpath`, nothing but `rt.jar`. Highest priority will be given to this loader.
2. Extension `ClassLoader` – Responsible for loading classes which are inside `ext` folder (`jre\lib`).
3. Application `ClassLoader` –Responsible for loading Application Level `Classpath`, path mentioned Environment Variable etc.

## Linking
1. Verify – Bytecode verifier will verify whether the generated bytecode is proper or not if verification fails we will get the verification error.
2. Prepare – For all static variables memory will be allocated and assigned with default values.
3. Resolve – All symbolic memory references are replaced with the original references from Method Area.

## Initialization
All static variables will be assigned with the original values, and the static block will be executed.

