/* SPDX-License-Identifier: MIT OR Apache-2.0
 *
 * Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>
 */

_rasp_load_addr = 0x80000;

ENTRY(_rasp_load_addr)

SECTIONS
{
    . = _rasp_load_addr;

    .text : {
        KEEP(*(.text))
    }
}
