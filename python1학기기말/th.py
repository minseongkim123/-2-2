from tkinter import Tk, Label, LEFT, RIGHT, TOP, BOTTOM, Button, Entry
# 최상위 윈도우 객체 생성
window = Tk()
# 윈도우 크기 조정
window.geometry("400x300") # width x height
window.title("친구 관리")

# label 객체 생성
l1 = Label(window, text="이름")
l1.pack()

l2 = Label(window, text="전화번호")
l2.pack()

l3 = Label(window, text="주소")
l3.pack()

l4 = Label(window, text="이메일")
l4.pack()

# Entry 객체
e1 = Entry(window, width=20)
e1.pack()

e2 = Entry(window, width=20)
e2.pack()

e3 = Entry(window, width=20)
e3.pack()

e4 = Entry(window, width=20)
e4.pack()

# Button 객체
b1 = Button(window, text="검색", bg="orange", fg="blue", width=7, height=2) # back ground, fg 글자색
b1.pack(side=LEFT, padx=3)

b2 = Button(window, text="추가", bg="orange", fg="blue", width=7, height=2) # back ground, fg 글자색
b2.pack(side=LEFT, padx=3)

b3 = Button(window, text="삭제", bg="orange", fg="blue", width=7, height=2) # back ground, fg 글자색
b3.pack(side=LEFT, padx=3)

b4 = Button(window, text="수정", bg="orange", fg="blue", width=7, height=2) # back ground, fg 글자색
b4.pack(side=LEFT, padx=3)

b5 = Button(window, text="종료", bg="orange", fg="blue", width=7, height=2) # back ground, fg 글자색
b5.pack(side=LEFT, padx=3)

window.mainloop()