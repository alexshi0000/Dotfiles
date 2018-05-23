#!/bin/bash
pkill -9 -f ".py"
python3 ~/.config/dynamic_wallpaper.py #specify our python script

# the dynamic_wallpaper.py script does all of the following down below. we are useing this shell script to kill all python instances
# and then call a python script for our wallpaper. thats it. TODO add a startup/logout kill list and include python in that
