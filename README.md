# Assembly Out-of-Bounds Memory Access Bug

This repository demonstrates a common error in assembly programming: accessing memory without proper bounds checking. The `bug.asm` file contains the problematic code.  The `bugSolution.asm` file provides a corrected version with added bounds checks.

**Bug:**
The core issue is the instruction `mov eax, [ebx+esi*4+0x10]`. This instruction does not verify that the calculated memory address is within the allocated memory range.  An incorrect `ebx` or `esi` value could result in a crash.

**Solution:**
The solution involves adding code to check the calculated address against the allocated memory boundaries before attempting to access it.  The corrected code in `bugSolution.asm` shows how this can be implemented, although the specifics of the implementation will vary based on the system and environment.