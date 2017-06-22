"""
Testing Module
=============================
module:         Test
summary:        Generation and testing of event type 1.
"""

""" Python imports """
import subprocess
import time
import random
import sys

limit = int(sys.argv[1])
# Result file
r = open('result_1', 'a')
for j in range(0,100):
    f = open('sample-data.xml', 'w')
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="no"?><SSD><CLIENT><version>1</version><deviceId>42008fbbce41a200</deviceId><deviceModel>SM-G531H</deviceModel></CLIENT>')
    for i in range(0,limit):
        m = random.randint(1,20)
        n = random.randint(1,20)
        position = ""
        acceleration = ""
        # Generating random values.
        for k in range(0,m):
            position += "<POSITION><time>1484729663000</time><latitude>48.6191725</latitude><longtitude>2.428236</longtitude><accuracy>6.0</accuracy></POSITION>"
        for k in range(0,n):
            acceleration += "<ACCELERATION><time>1484729664912</time><X>-8.487445</X><Y>-2.1655555</Y><Z>-7.3178773</Z><accuracy>0</accuracy></ACCELERATION>"
        f.write("<EVENT_RAW><type>1</type><ACCELERATION_LIST>" + acceleration + "</ACCELERATION_LIST><SPEED_LIST><SPEED><time>1484729580000</time><value>2.3218932</value><accuracy>4.0</accuracy></SPEED></SPEED_LIST><POSITION_LIST>" + position + "</POSITION_LIST></EVENT_RAW>")
    f.write("</SSD>")
    f.close()
    start_time = time.time()
    ret = subprocess.call(["./createKmlFile"])
    elapsed_time = time.time() - start_time
    r.write(str(elapsed_time))
    r.write(" ")
r.write("\n\n")
