import os
import time
from datetime import datetime

now = datetime.now()
cmd1 = 'feh --bg-scale ~/Pictures/WallP/Others/1.jpg'
cmd2 = 'feh --bg-scale ~/Pictures/WallP/Others/2.jpg'
cmd3 = 'feh --bg-scale ~/Pictures/WallP/Others/3.jpg'
cmd4 = 'feh --bg-scale ~/Pictures/WallP/Others/4.jpg'

i = 1
while ( i < 10):
    current_time = now.strftime("%H")

    if current_time > "05" and current_time < "15":
        print('I am in if')
        os.system(cmd1)
    elif current_time >= "15" and current_time < "17":
        print('I am in else if1')
        os.system(cmd2)
    elif current_time >= "17" and current_time < "21":
        print('I am in else if2')
        os.system(cmd3)
    else:
        print("i am in else")
        os.system(cmd4)
    time.sleep(300)
