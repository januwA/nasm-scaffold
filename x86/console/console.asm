
; https://docs.microsoft.com/en-us/windows/console/getstdhandle
STD_OUTPUT_HANDLE equ -11
NULL equ 0

extern GetStdHandle
extern WriteFile
extern ExitProcess

global main

section .data
  msg db "hello world",0dh,0ah,
  msgSize equ $ - msg

section .bss
  lpNumberOfBytesWritten resd 1

section .text
main:
  push STD_OUTPUT_HANDLE
  call GetStdHandle

  push NULL
  push lpNumberOfBytesWritten
  push msgSize
  push msg
  push eax
  call WriteFile

  push NULL
  call ExitProcess