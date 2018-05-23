import glob
import random
from subprocess import call
wall_list = glob.glob("/home/lx_user/Pictures/no_sphere_wallpack/*.jpg") #here is the wallpaper pack

while True:
	idx = random.randint(0, len(wall_list) - 1)
	#print(str(idx) + " " + str(len(wall_list)))
	call(["feh", "--bg-fill", wall_list[idx]])
	call(["sleep", "300"])


