// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>

use core::arch::global_asm;

global_asm!(
    include_str!("head.S"),
    BOOT_CORE_ID_MASK = const 0b11,
    BOOT_CORE_ID = const 0b00
);

#[no_mangle]
pub fn _primary_entry() -> ! {
    crate::primary_entry();
}

