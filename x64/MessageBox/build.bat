@echo off

nasm -f win64 MessageBox.asm

golink @link.fil