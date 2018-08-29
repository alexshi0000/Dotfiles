#!/bin/sh

B='#00000000'  # blank
C='#ffffffff'  # clear ish
D='#ffffffff'  # default
T='#ffffffff'  # text
W='#ffffffff'  # wrong
V='#ffffffff'  # verifying
RED='#FF5555'
BLUE='#8BE9FD'
PURPLE='#BD93F9'
PINK='#FF79C6'
ORANGE='#FFB86C'
GREEN='#50FA7B'
BLACK='00000000'

./x86_64-pc-linux-gnu/i3lock \
--insidevercolor=$B   \
--ringvercolor=$B     \
\
--insidewrongcolor=$B \
--ringwrongcolor=$B   \
\
--insidecolor='00000035'      \
--ringcolor=$T        \
--linecolor=$B        \
--separatorcolor=$B   \
\
--verifcolor=$T        \
--wrongcolor=$RED'FF'       \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$B       \
--bshlcolor=$BLACK        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \

# --veriftext=" . . . "\

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
