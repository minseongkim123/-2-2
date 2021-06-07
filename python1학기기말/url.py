import requests
import json


url = requests.get("https://jsonplaceholder.typicode.com/users")

# JSON 문자열
testData = url.text
print(type(testData))   # str(json 문자열)

data = json.loads(testData)
print(data)
print(type(data))

dic = data["contacts"][1]
print(dic["name"])
print(dic["email"])