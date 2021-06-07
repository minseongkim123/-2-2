#빈 주소데이터
addressData = {}

with open(".\data.txt")as f:

    while True:
        line = f.readline()
        if not line:
            break
            # print(line)
            # 추후 처리를 위하여 딕셔너리에 넣기
            # split을 문자열을 분리하여 리스트에 저장
            raw = line.split(',')
            # print(raw[0])
            key = raw[0]  # name]
            vals = [raw[1], raw[2]]  # list[phone_no, address
            print(key, vals)

# 딕셔너리의 데이터 추가
addressData["손흥민"] = ["010-1234-5678", "프리미어 리그"]
print(addressData)

# 딕셔너리 삭제
addressData.pop("")
print(addressData)

# 딕셔너리 저장
with open("./outdata.txt", "w") as f:
    for key in address_book:
        f.write(key + ',')
        f.write(address_book[key][0] + ',')
        f.write(address_book[key][1] + '\n')
    f.close()
