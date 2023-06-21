> Modular OS design

Consider that OS should provide 
1. A set of simple tools, each of which performs a limited, well-defined function (e.g. [[suckless software]])
2. A unified and inode-based [[filesystem]] (the Unix filesystem)
3. Inter-process communication mechanism known as `pipes` serve as the main means of communication
4. [[shell]] scripting and command language (the Unix shell) is used to combine the tools to perform complex workflows.