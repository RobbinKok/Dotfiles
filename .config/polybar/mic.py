import subprocess

mic = subprocess.getoutput("amixer sget Capture")
mic = mic.replace(" ", "")
mic = mic.replace("]", "")
mic = mic.replace("[", " ")

mic = mic[182::]
#print(" Mic: " + mic.strip() + " ")
mic = "Mic is " + mic.strip()
subprocess.getoutput("notify-send -u critical -t 3000 'Notice' '{}'".format(mic))
