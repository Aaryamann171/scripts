import os
import time
from progress.bar import FillingSquaresBar

def run_bar():
	mylist = [1,2,3,4,5]
	bar = FillingSquaresBar('Bar', max = len(mylist))
	for item in mylist:
	    bar.next()
	    time.sleep(0.5)
	bar.finish()

cmd1 = os.popen('nmcli radio wifi off')
cmd2 = os.popen('echo Turning wifi off')
cmd3 = os.popen('nmcli radio wifi on')
cmd4 = os.popen('echo Turning wifi back on')


output1 = cmd1.readlines()
output2 = cmd2.read()
print(output2)
run_bar()
output3 = cmd3.readlines() 
output4 = cmd4.read()
print(output4)
run_bar()
