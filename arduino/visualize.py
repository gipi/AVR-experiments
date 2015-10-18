import serial
import math
import time
import numpy as np
import matplotlib.pyplot as plt


PORT = '/dev/ttyACM0'

if __name__ == '__main__':
    plt.axis([0, 1000, 0, 15])
    plt.ion()
    plt.show()

    s = serial.Serial(PORT, 9600)
    for i in range(1000):
        line = s.readline().split("\n")[0]
        print "line: '%s'" % line
        values = line.split(" ")
        print 'values: %s' % values
        if len(values) != 3:
            print "!"
            continue

        x = float(values[0])
        y = float(values[1])
        z = float(values[2])

        m = math.sqrt(math.pow(x, 2) + math.pow(y, 2) + math.pow(z, 2) )
        print 'modulo: %f' % m
        plt.scatter(i, m)

        plt.draw()
