import getpass
import sys
import telnetlib

HOST = "hostname or ip"
user = raw_input("Enter your remote account: ")
password = getpass.getpass()

tn = telnetlib.Telnet(HOST)

tn.read_until("login: ")
tn.write(user + '\n')
if password:
    tn.read_until("Password: ")
    tn.write(password + '\n')

tn.read_until()
tn.write("ls\n")
tn.write("exit\n")

print tn.read_all()
    