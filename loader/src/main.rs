#![no_std]
#![no_main]
#![feature(abi_efiapi)]
#![allow(unused_imports)]

extern crate uefi_services;

use core::arch::asm;
use core::fmt::Write;
use uefi::prelude::*;

#[entry]
fn efi_main(_image: Handle, mut st: SystemTable<Boot>) -> Status {
    st.stdout().reset(false).unwrap_success();
    writeln!(st.stdout(), "Hello, Mikan World!").unwrap();

    loop {}
}
