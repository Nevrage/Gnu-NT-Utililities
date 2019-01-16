VBoxManage createvm --name "sourcescript" --ostype Linux_64 --register
:: VBoxManage list ostypes
VBoxManage modifyvm "sourcescript" --memory 2048 --acpi on --boot1 dvd --nic1 nat
VBoxManage createhd --filename "source.vdi" --size 100000
VBoxManage storagectl "sourcescript" --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach "sourcescript" --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium "source.vdi"
VBoxManage storageattach "sourcescript" --storagectl "IDE Controller" --port 0 --device 1 --type dvddrive --medium C:\Users\yallouche\Desktop\Scripts>C:\Users\yallouche\Downloads\Builds\ISO\archlinux-2018.09.01-x86_64.iso
:: VBoxManage unregistervm     <uuid>|<name> [--delete]
pause
