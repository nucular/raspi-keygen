# raspi-keygen

This is an effort to reverse-engineer the Raspberry Pi license key check for
MPEG-2 and VP1 hardware video encoding.

## Patch

A bootloader patch that disables licensing checks was posted to 
[reddit](https://www.reddit.com/r/raspberry_pi/comments/5x7xbo/patch_for_mpeg2_vc1_license/)
by [/u/fuck_the_mpeg_la](https://www.reddit.com/user/fuck_the_mpeg_la)
on 03-03-2017:

```bash
cd /boot
cp start.elf start.elf_backup && \
 perl -pne 's/\x47\xE9362H\x3C\x18/\x47\xE9362H\x3C\x1F/g' < start.elf_backup > start.elf
```

Some initial analysis was done by [q3k](https://news.ycombinator.com/user?id=q3k)
on [Hacker News](https://news.ycombinator.com/item?id=16383368):

```
[...]
it seems to patch a licensing function at 0xEC95FD4 [1] to always return 1, by patching the jump at 0xEC95FE2 (that should be only taken for the always-allowed H263 codec) to always be taken, thus always allowing all codecs.
```
![Mirrored from https://q3k.org/u/8e3173aef341df726e4f38f30e58417239423250f3e44f5b8b79acdc451d1553.png](assets/patch.png)
