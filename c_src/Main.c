#include <Uefi.h>
#include <Library/Uefilib.h>

EFI_STATUS EFI_API UefiMain(EFI_HANDLE image_handle, EFI_SYSTEM_TABLE *system_table) {
	Print(L"Hello, Mikan World!\n");
	while(1);
	return EFI_SUCCESS;
}

