/* SPDX-License-Identifier: MIT OR Apache-2.0
 *
 * Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>
 */
/*
 * GNU Assembler Guide: https://sourceware.org/binutils/docs/as/
 */

.section ".text.head"

.global _head

_head:
    // allow to boot only on the boot_core
    mrs x0, mpidr_el1
    and x0, x0, {BOOT_CORE_ID_MASK}
    mov x1, {BOOT_CORE_ID}
    cmp x0, x1
    b.ne .loop_forever

    ldr x0, =_head
    mov sp, x0

    ldr x1, =__bss_start
    ldr x2, =__bss_end

.clear_bss:
    cmp x1, x2
    b.eq _primary_entry
    stp xzr, xzr, [x1], #16
    b .clear_bss

.loop_forever:
    wfe
    b .loop_forever
