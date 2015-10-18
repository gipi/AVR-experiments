import serial


PORT = '/dev/ttyACM0'

if __name__ == '__main__':
    s = serial.Serial(PORT, 9600)
    while True:
        line = s.readline()
        print line
