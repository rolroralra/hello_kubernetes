import os, time

while True:
  os.system("kubectl describe pod | grep image > result.txt")
  print(open("result.txt").read())
  time.sleep(1)

