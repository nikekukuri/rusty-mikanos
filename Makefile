all:
	cargo build \
		-Zbuild-std=core,compiler_builtins \
		-Zbuild-std-features=compiler-builtins-mem \
		--target x86_64-unknown-uefi
