section .data
    array_size equ 10 ; Example array size
    array times array_size dw 0 ; Example array

section .text
    global _start

_start:
    ; ... other code ...
    mov esi, 5 ; Example index
    mov ebx, array
    cmp esi, array_size  ; Check bounds
    jae error_handling ; Jump if out of bounds
    mov eax, [ebx + esi * 2] ; Access array element
    ; ... rest of the code ...

error_handling:
    ; Handle the out-of-bounds error appropriately (e.g., exit program)
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80