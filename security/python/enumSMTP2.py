#!/usr/bin/pytohn
import socket, sys,re

file = open('wordlist.txt')
for linha in file.readlines():
	print linha
	s = socket.socket(AF_INET, SOCK_STREAM)
	s.connect((sys.argv[1],25))
	resp = s.recv(1024))
	s.send("VRFY "+linha)
	resp = s.recv(1024)
	if re.search('252',resp):
		print ("Usuario encontrado: " + resp.strip('252 2.0.0'))
