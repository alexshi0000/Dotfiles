set $mod Mod4
set $mod2 Mod1

mode "mouse" {

    # set your three speeds here

    set $slow 1
    set $quick 10
    set $fast 50

    # Mouse movement (slow/fine-tuned) -- vim keybindings

    bindsym h exec xdotool mousemove_relative -- -$slow 0
    bindsym j exec xdotool mousemove_relative 0 $slow
    bindsym k exec xdotool mousemove_relative -- 0 -$slow
    bindsym l exec xdotool mousemove_relative $slow 0

    # Mouse movement (slow/fine-tuned) -- arrow keys

    bindsym Left exec xdotool mousemove_relative -- -$slow 0
    bindsym Down exec xdotool mousemove_relative 0 $slow
    bindsym Up exec xdotool mousemove_relative -- 0 -$slow
    bindsym Right exec xdotool mousemove_relative $slow 0

    # Mouse movement (quicker) -- vim keybindings

    bindsym Shift+h exec xdotool mousemove_relative -- -$quick 0
    bindsym Shift+j exec xdotool mousemove_relative 0 $quick
    bindsym Shift+k exec xdotool mousemove_relative -- 0 -$quick
    bindsym Shift+l exec xdotool mousemove_relative $quick 0

    # Mouse movement (quicker) -- arrow keys

    bindsym Shift+Left exec xdotool mousemove_relative -- -$quick 0
    bindsym Shift+Down exec xdotool mousemove_relative 0 $quick
    bindsym Shift+Up exec xdotool mousemove_relative -- 0 -$quick
    bindsym Shift+Right exec xdotool mousemove_relative $quick 0

    # Mouse movement (fast) -- vim keybindings

    bindsym Shift+$mod2+h exec xdotool mousemove_relative -- -$fast 0
    bindsym Shift+$mod2+j exec xdotool mousemove_relative 0 $fast
    bindsym Shift+$mod2+k exec xdotool mousemove_relative -- 0 -$fast
    bindsym Shift+$mod2+l exec xdotool mousemove_relative $fast 0

    # Mouse movement (fast) -- arrow keys

    bindsym Shift+$mod2+Left exec xdotool mousemove_relative -- -$fast 0
    bindsym Shift+$mod2+Down exec xdotool mousemove_relative 0 $fast
    bindsym Shift+$mod2+Up exec xdotool mousemove_relative -- 0 -$fast
    bindsym Shift+$mod2+Right exec xdotool mousemove_relative $fast 0

    # Left Click
    bindsym f exec xdotool click 1

    # Middle Click
    bindsym d exec xdotool click 2

    # Right Click
    bindsym s exec xdotool click 3

    # Left Click-and-drag
    bindsym Shift+f exec xdotool mousedown 1

    # Middle Click-and-drag 
    bindsym Shift+d exec xdotool mousedown 2

    # Right Click-and-drag
    bindsym Shift+s exec xdotool mousedown 3

    # Left Drag release
    bindsym $mod2+f exec xdotool mouseup 1

    # Middle Drag release
    bindsym $mod2+d exec xdotool mouseup 2

    # Right Drag release
    bindsym $mod2+s exec xdotool mouseup 3


    # return to normal keybindings -- IMPORTANT!!

    bindsym Escape mode "default"
}

bindsym $mod+$mod2+Shift+m mode "mouse"
