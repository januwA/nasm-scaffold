@echo off

nasm -f win32 MessageBox.asm

golink @link.fil