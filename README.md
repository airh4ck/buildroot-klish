# zebra-pro

Реализованы следующие команды:
- Непривилегированный режим:
    - `ping`
    - `traceroute`
    - `enable` (переход в привилегированный режим)
    - `exit` (выход из clish)
- Привилегированный режим:
    - `disable` (выход из привилегированного режима)
    - `show` 
        - `bridges` (информация о мостах)
        - `interfaces` (информация об интерфейсах)
        - `ip` (информация об IP)
    - `configure`
        - `bridge` (конфигурация мостов)
        - `interface` (конфигурация интерфейсов, включая создание VLAN)
        - `ip` (конфигурация IP)
        - `no` (отрицание команды)

## buildroot

```bash
$ make qemu_x86_64_defconfig

$ make menuconfig
; check "klish" box in 
; Target packages > Shell and utilities > klish
; check "bridge-utils" box in
; Target Packages > Libraries > JSON/XML > expat и Target Packages > Networking applications

$ make linux-menuconfig
; check "802.1d Ethernet Bridging" and "802.1Q VLAN support" in
; Networking support > networking options

$ make
$ output/images/start-qemu.sh
```
