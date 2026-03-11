;Infinite Loop that makes our boot continue forever
loop:
	jmp loop
;Now to make it 512 bytes, to make it a perfect sector size
times 510-($-$$) db 0
;$ is used to show the current position, $$ is used to show the starting position of the current section
;now for the magic number, that specifies this sector as a boot sector
dw 0xaa55 ;thats the number
