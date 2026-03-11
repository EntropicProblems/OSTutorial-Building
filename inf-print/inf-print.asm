	mov ah,0x0e ;this is tty mode, which I do not fully understand yet.
; I assume it has to do with the int 0x10 interrupt, since this uses al as the char to print
;, which means it probably looks to make sure ah has 0x0e in it to print in this mode
	mov al,'H' ;this puts our character in the spot int 0x10 is looking for
	int 0x10 ;this runs int 0x10, the interrupt at 0x10
	mov al, 'e'
	int 0x10
	mov al, 'l'
	int 0x10
	int 0x10
	mov al, 'o'
	int 0x10

	jmp $ ;simple infinite loop, jump to current address

times 510 - ($-$$) db 0
dw 0xaa55
