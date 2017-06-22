"""
Testing Module
=============================
module:         Test
summary:        Computing testing data.
"""

""" Python imports """
import subprocess
import time
import random
import sys

out = open('plot_1.dat','w')
out.write("x, mean, min, max\n")
with open('result_1', 'r') as f:
    for line in f:
        if len(line) != 1:
            line = line.split(' ')[:99]
            min = float(line[0])
            max = float(line[0])
            sum = 0.0
            for val in line:
                print("Element: "+val) 
                sum += float(val)
                if float(val) < min:
                    min = float(val)
                if float(val) > max:
                    max = float(val)
            mean = sum / 100
            out.write(", "+ str(mean) +", "+ str(min) +", "+str(max)+"\n")

out = open('plot_2.dat','w')
out.write("x, mean, min, max\n")
with open('result_2', 'r') as f:
    for line in f:
        if len(line) != 1:
            line = line.split(' ')[:99]
            min = float(line[0])
            max = float(line[0])
            sum = 0.0
            for val in line:
                print("Element: "+val) 
                sum += float(val)
                if float(val) < min:
                    min = float(val)
                if float(val) > max:
                    max = float(val)
            mean = sum / 100
            out.write(", "+ str(mean) +", "+ str(min) +", "+str(max)+"\n")

out = open('plot_3.dat','w')
out.write("x, mean, min, max\n")
with open('result_3', 'r') as f:
    for line in f:
        if len(line) != 1:
            line = line.split(' ')[:99]
            min = float(line[0])
            max = float(line[0])
            sum = 0.0
            for val in line:
                print("Element: "+val) 
                sum += float(val)
                if float(val) < min:
                    min = float(val)
                if float(val) > max:
                    max = float(val)
            mean = sum / 100
            out.write(", "+ str(mean) +", "+ str(min) +", "+str(max)+"\n")