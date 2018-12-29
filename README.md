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

※ -P 1 ... LANポート
※ -P 2 ... USB全ポート
※ 個別ポートの制御は不可

```bash
$ sudo hub-ctrl -h 0 -P 2 -p 0 ... OFF
$ sudo hub-ctrl -h 0 -P 2 -p 1 ... ON
```

# ◆ 参考情報

```
  Port1   -------   -------
 +-----+ | Port2 | | Port4 |
 | LAN | |-------| |-------|
 +--_--+ | port3 | | Port5 |
          -------   -------
```