NULL equ 0

extern MessageBoxA
extern ExitProcess

global main

section .data
  text db "hello.", 0
  caption db "title", 0

section .text

main:
  push 1
  push caption
  push text
  push NULL
  call MessageBoxA

  push NULL
  call ExitProcess