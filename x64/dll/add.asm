global dllmain

section .text

dllmain:
  mov eax,1
  ret

add:
  push rbp
  mov rbp,rsp

  mov rax,rcx
  add rax,rdx

  mov rsp,rbp
  pop rbp
  ret