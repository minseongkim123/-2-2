import math

# 클래스 정의
class Circle:
    def __init__(self, radius=0):
        self.radius = radius

    def getArea(self):
        return math.pi*self.radius*self.radius

    def getPerimeter(self):
        return 2* math.pi*self.radius

# circle객체 생성
c = Circle(10)
print("원의 면적", c.getArea())
print("원의 면적", c.getPerimeter())
