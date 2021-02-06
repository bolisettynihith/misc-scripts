import sys
import os
import subprocess
import pyperclip # python3 -m pip install pyperclip

filename = sys.argv[1]
out = subprocess.getoutput("curl https://bashupload.com/{} --data-binary @{}".format(filename,filename))

ind = out.find("https")
url = out[ind::]
url = url.replace('\n','').replace('=','')

pyperclip.copy(url)
spam = pyperclip.paste()

print("Url copied to your clipboard is {}".format(url))
