; https://docs.microsoft.com/en-us/windows/console/getstdhandle
STD_OUTPUT_HANDLE equ -11
NULL equ 0

extern GetStdHandle
extern WriteFile
extern ExitProcess

global main

section .data
  msg db "hello world",0dh,0ah,
  msgSize equ $-msg

section .bss
alignb 8
  lpNumberOfBytesWritten resq 1

section .text
main:
  sub rsp,8

  sub rsp,32
  mov rcx,STD_OUTPUT_HANDLE
  call GetStdHandle
  add rsp,32

  sub rsp,48
  mov rcx,rax
  mov rdx,msg
  mov r8,msgSize
  mov r9,lpNumberOfBytesWritten
  mov qword [rsp+32],NULL
  call WriteFile
  add rsp,48

  xor rcx,rcx
  call ExitProcess