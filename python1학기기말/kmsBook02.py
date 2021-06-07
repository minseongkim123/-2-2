import pyrebase

config = {
    "apiKey": "AIzaSyD0K8FTprfQkUCaaFX1qxSNpSFmCXINR7E",
    "authDomain": "kmsbook02.firebaseapp.com",
    "databaseURL": "https://kmsbook02-default-rtdb.firebaseio.com",
    "projectId": "kmsbook02",
    "storageBucket": "kmsbook02.appspot.com",
    "messagingSenderId": "250319048100",
    "appId": "1:250319048100:web:1c88a8ccbd63b3dec74531",
    "measurementId": "G-ZQ94X8J3Z1"
};

# Firebase  사용

firebase = pyrebase.initialize_app(config)

# DB 사용하기

db = firebase.database()
print(db)

# db.set("홍길동")
db.child("아이샤").set("010-1111-2222")
db.child("로베르트").set("010-3333-4444")

name = "제레인트"
info = ["010-5555-6666", "부산시 진구", "jraint@naver.com"]
db.child(name).set(info)

# db  업데이트
db.update({"제레인트":["1111-2222", "부산시", "kkk@dit.ac.kr"]})

db.update({"제레인트":"999-9999"})

# 데이터 읽어오기(query) get()
user = db.get("벨")
print(user.val())

# 삭제

db.child("제레인트").remove()