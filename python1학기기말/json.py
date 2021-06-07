import json

dict1 = {'...': '010-1111-2222', '...2':'010-3333-4444'}
obj1 = json.dumps(dict1, ensure_ascii=False)
print(obj1) #문자열(str)로 출력
print(type(obj1))

# dump : 딕셔너리를 파일로 내보낼때
with open('./addressData.json', 'w', encoding='utf-8-sig') as f:
    json.dump(dict1, f, ensure_ascii=False, indent=4)

    #################################

    # loads : JSON 문자열(파이썬 객체)을 읽어 딕셔너리에 저장
    dict2 = '{"...3: "010-5555-6666", "...4: "010-7777-8888"}'
    obj2 = json.loads(dict2)
    print(obj2)
    print(type(obj2))

    # load : 파일을 읽어 딕셔너리에 저장
    with open("addressDate.json", "r", encoding='utf-8-sig') as f:
        obj3 = json.load(f)
        print(obj3)
        print(type(obj3))