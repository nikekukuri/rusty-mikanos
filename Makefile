all: loader.efi kernel.elf

loader.efi: FORCE
	cd loader && cargo build
	cp target/x86_64-unknown-uefi/debug/loader.efi loader.efi

kernel.elf: FORCE
	cd kernel && cargo build
	cp target/x86_64-unknown-none-ors/debug/kernel kernel.elf

qemu: loader.efi kernel.elf
	./qemu/make_and_run.sh loader.efi kernel.elf

FORCE:

clean:
	rm -f kernel.elf loader.efi
