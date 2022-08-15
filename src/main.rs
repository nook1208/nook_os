// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>

#![allow(missing_docs)]
#![feature(asm_const)]
#![feature(stdsimd)]
#![no_main]
#![no_std]

use core::panic::PanicInfo;

mod kernel;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    unsafe {
        loop { core::arch::aarch64::__wfe(); }
    }
}

pub fn primary_entry() -> ! {
    panic!();
}
