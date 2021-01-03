global dllmain

section .text

dllmain:
  mov eax,1
  ret 12

add:
  push ebp
  mov ebp,esp

  mov eax,[ebp+8]  ; p1
  add eax,[ebp+12] ; p2

  mov esp,ebp
  pop ebp
  ret 8