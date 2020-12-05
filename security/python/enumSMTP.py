#!/usr/bin/python
import socket, sys

if len(sys.argv)!=3:
	print "Use: python enumSMTP.py user IP port"
	sys.exit(0)
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((sys.argv[2],int(sys.argv[3])))
banner = s.recv(1024)
print banner

s.send("VRFY"+sys.argv[1]+"\r\n")
r = s.recv(1024)
print r
