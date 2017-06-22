"""
Testing Module
=============================
module:         Test
summary:        Generation and testing of event type 2.
"""

""" Python imports """
import subprocess
import time
import random
import sys

limit = int(sys.argv[1])
# Resulting file
r = open('result_2', 'a')
for j in range(0,100):
    f = open('sample-data.xml', 'w')
    # Generating random values.
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="no"?><SSD><CLIENT><version>1</version><deviceId>42008fbbce41a200</deviceId><deviceModel>SM-G531H</deviceModel></CLIENT>')
    for i in range(0,limit):
        f.write("<EVENT_RAW><type>2</type><ACCELERATION_LIST><ACCELERATION><time>1484729552210</time><X>-9.557653</X><Y>0.16639702</Y><Z>-4.675876</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729552797</time><X>-6.326678</X><Y>-1.472434</Y><Z>-6.587646</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729553210</time><X>-9.940725</X><Y>-0.6775591</Y><Z>-6.5098343</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729553398</time><X>-8.400057</X><Y>0.47764325</Y><Z>-4.072537</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729553797</time><X>-11.544841</X><Y>-2.1775265</Y><Z>-6.6056023</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729554211</time><X>-3.8402996</X><Y>-0.9935937</Y><Z>-5.813122</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729554397</time><X>-10.171766</X><Y>-0.07182605</Y><Z>-4.9799395</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729554597</time><X>-8.930372</X><Y>0.7134721</Y><Z>-3.799598</Z><accuracy>0</accuracy></ACCELERATION><ACCELERATION><time>1484729554797</time><X>-9.022549</X><Y>0.18555063</Y><Z>-4.449624</Z><accuracy>0</accuracy></ACCELERATION></ACCELERATION_LIST><SPEED_LIST><SPEED><time>1484729552210</time><value>2.7320035</value><accuracy>3.0269787</accuracy></SPEED><SPEED><time>1484729554797</time><value>2.6989138</value><accuracy>2.7203763</accuracy></SPEED></SPEED_LIST><POSITION_LIST><POSITION><time>1484729544000</time><latitude>48.61854836592925</latitude><longtitude>2.4339868004967764</longtitude><accuracy>4.0</accuracy></POSITION><POSITION><time>1484729544000</time><latitude>48.61854836592925</latitude><longtitude>2.4339868004967764</longtitude><accuracy>4.0</accuracy></POSITION></POSITION_LIST></EVENT_RAW>")        
    f.write("</SSD>")
    f.close()
    start_time = time.time()
    ret = subprocess.call(["./createKmlFile"])
    elapsed_time = time.time() - start_time
    r.write(str(elapsed_time))
    r.write(" ")
r.write("\n\n")
