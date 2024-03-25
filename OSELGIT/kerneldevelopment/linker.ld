ENTRY(kernel_main)
OUTPUT_FORMAT("elf32-i386")
OUTPUT("/path/to/kernel.bin") //yaha par kernel.bin ka 

SECTIONS {
	. =1M;
	.text ALIGN (4K) : {
		*(.text)
	}
	.rodata ALIGN (4K) : {
		*(.rodata)
	}
	.data ALIGN (4K) : {
		*(.data)
	}
	.bss ALIGN (4K) : {
		*(.bss)
	}
}
