/* SPDX-License-Identifier: MIT OR Apache-2.0
 *
 * Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>
 */

_rasp_load_addr = 0x80000;

/* Define the first executable instruction */
ENTRY(_rasp_load_addr)

SECTIONS
{
    . = _rasp_load_addr;

    /* stack grows to a lower address per AAPCS64 starting just before .text */
    _stack_start = .;

    .text : { 
        KEEP(*(.text.head))
        *(.text*)
    }

    .rodata : ALIGN(8) { *(.rodata*) }
    .data : { *(.data*) }
    /* bss section doesn't have to be loaded to save time */
    .bss (NOLOAD) : ALIGN(16) {
        __bss_start = .;
        *(.bss*);
        __bss_end = ALIGN(16);
    }

    _end = .;

   /DISCARD/ : { *(.comment) }
}
