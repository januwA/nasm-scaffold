NULL equ 0

extern MessageBoxA
extern ExitProcess

global main

section .data
  text db "hello.", 0
  caption db "title", 0

section .text
main:
  sub rsp,8

  sub rsp,32
  xor rcx,rcx
  mov rdx,text
  mov r8,caption
  mov dword r9d,1
  call MessageBoxA
  sub rsp,32

  xor rcx,rcx
  call ExitProcess