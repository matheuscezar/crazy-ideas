#!/usr/bin/python
import socket, sys
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((sys.argv[1],int(sys.argv[2])))
resposta = s.recv(1024)
print resposta

s.send("USER anonymous \r\n")
r = s.recv(1024)
print r

s.send("PASS anonymous\r\n")
r = s.recv(1024)
print r

s.send("PWD \r\n")
s.send("QUIT \r\n")
r = s.recv(2048)
