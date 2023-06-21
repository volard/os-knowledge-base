---
tags: definition
aliases: fork, exec
sources: https://www.geeksforgeeks.org/fork-system-call, https://www.scaler.com/topics/fork-system-call/
---

Used for creating a new process **in Linux, and Unix systems**, which is called the _**child process**_, which runs concurrently with the process that makes the `fork()` call (parent process).

```cpp
pid_t fork(void);
```

The new child process's process ID, or PID, is returned to the parent process. 
If something goes wrong, the parent process returns -1

# Example
```cpp
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
 
int getPIN() {
  srand(getpid() + getppid());
  int secret = 1000 + rand() % 9000;
  return secret;
}
 
//main function begins
int main(void) {
  int fd[2];
  pipe(fd);
  pid_t pid = fork();
 
  if(pid > 0) {
    close(0);
    close(fd[1]);
    dup(fd[0]);
 
    int secretNumber;
    size_t readBytes = read(fd[0], &secretNumber, sizeof(secretNumber));
 
    printf("Waiting for PIN to be created...\n");
    wait(NULL);
    printf("Bytes read: %ld\n", readBytes);
    printf("PIN: %d\n", secretNumber);
  }
  else if(pid == 0) {
    close(1);
    close(fd[0]);
    dup(fd[1]);
 
    int secret = getPIN();
    write(fd[1], &secret, sizeof(secret));
    exit(EXIT_SUCCESS);
  }
 
  return EXIT_SUCCESS;
}

// Ouput
// Waiting for the PIN to be created...
// Bytes read: 4
// PIN: 1421

```



# Difference with `exec()`
`exec()` replaces the address spaces of copied [[pages]]


`fork()` | `exec()`
:-------: | :-------:
Creates a new process that is an identical copy of the original process. | Creates a new process in place of the original process.
Both the parent and the child processes are run at the same time. | Unless there is an error, control never goes back to the original process.
Parent and child processes are in different address spaces | Parent address space is replaced by the child address space.
