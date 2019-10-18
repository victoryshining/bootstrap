## This computer doesn't have VT-X/AMD-v enabled. Enabling it in the BIOS is mandatory
*solution*: 
bios中的Intel Virtualization Technology设置成了disable的，重启电脑进入bios，将其设置成abled即可。
选择Security选项卡，选择其下的virtualization，进入后将Intel (R) virtualization Technology项置为Enable，按F10保存退出
