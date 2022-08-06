// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2022 Sunwook Eom <sunwook5492@gmail.com>

#[cfg(target_arch = "aarch64")]
#[path = "./arch/aarch64/kernel/head.rs"]
mod head;
