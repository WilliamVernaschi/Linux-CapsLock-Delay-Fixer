#!/bin/sh
#Linux CapsLock Delay Fixer by ErkanMDR /- HELYX

xkbcomp -xkb $DISPLAY xkbmap
xnline=$(grep -n 'key <CAPS>' 'xkbmap' |  grep -o '[0-9]*')
fixpatchline=$(cat fixpatch)
sed -i "${xnline}s/.*/$fixpatchline/" xkbmap
xkbcomp xkbmap $DISPLAY
clear
echo "Problem fixed ;)"
