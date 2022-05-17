import requests
import json

url = "http://157.245.33.77:30534/login"
headers = {"Content-Type": "application/x-www-form-urlencoded"}

digit = 0

while digit<=255:
    
    data = {"username": chr(digit), "password": chr(digit)}
    response = requests.post(url, headers=headers, data=data, allow_redirects=True)
    if(response.headers["Content-Length"] != "2214"):
        print("Content-Lenght respondido: " + response.headers["Content-Length"])
        print("%d = %c" %(digit, chr(digit)))
    digit += 1
