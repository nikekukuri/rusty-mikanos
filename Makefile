all: ors-loader.efi 

ors-loader.efi: FORCE
	cd loader && cargo build
	cp target/x86_64-unknown-uefi/debug/loader.efi loader.efi

#ors-kernel.elf: FORCE
#	cd ors-kernel && cargo build
#	cp target/x86_64-unknown-none-ors/debug/ors-kernel ors-kernel.elf

FORCE:

run_qemu_loader:
	~/devenv/run_qemu.sh loader.efi
