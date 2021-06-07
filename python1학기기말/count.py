# 클래스 정의
class Counter:
# 생성자 함수
    def __init__(self, initval=0):
        self.count = initval
# 멤버 함수
    def increment(self):
        self.count += 1

#객체 생성, 생성자 함수 실행
a = Counter(200)
# 객체의 함수 실행
a.increment()
a.increment()
# 객체의 변수 출력
print("a 객체 카운터의 값=", a.count)

b = Counter()
b.increment()
print("b 객체의 카운터 값=", b.count)