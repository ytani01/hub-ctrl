USBポートの電源ON/OFF制御：hub-ctrl
====

# ◆ 準備

```bash
$ sudo apt-get install libusb-dev
$ wget http://www.gniibe.org/oitoite/ac-power-control-by-USB-hub/hub-ctrl.c
$ gcc -O2 hub-ctrl.c -o hub-ctrl-armhf-static -lusb -static
$ sudo cp hub-ctrl-armhf-static /usr/local/bin/hub-ctrl
```

# ◆ 実行

※ -P 1とするとeth0が停止

```bash
$ sudo hub-ctrl -h 0 -P 2 -p 0 ... OFF
$ sudo hub-ctrl -h 0 -P 2 -p 1 ... ON
```

# ◆ 参考情報

```
         +-------+-------+
 +-----+ | Port2 | Port4 |
 | LAN | +-------+-------+
 +-+ +-+ | port3 | Port5 |
   +-+   +-------+-------+
```