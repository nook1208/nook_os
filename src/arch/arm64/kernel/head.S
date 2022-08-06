/* SPDX-License-Identifier: MIT OR Apache-2.0
 *
 * Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>
 */
/*
 * GNU Assembler Guide: https://sourceware.org/binutils/docs/as/
 */

 .global primary_entry 

 primary_entry:
 .loop_start:
    wfe
    b .loop_start
