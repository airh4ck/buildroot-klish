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

## Запуск clish

После запуска `qemu`:
```bash
$ clish -l
```

## buildroot

```bash
$ make qemu_x86_64_defconfig
$ make
$ output/images/start-qemu.sh
```
