import threading, os
a=input("Taking a reset every __?__ minutes:")
b=a*60
def printit():
  threading.Timer(b, printit).start()
  os.system("cat /home/chlwang/.zsh/timer/rest.txt | wall")

printit()
