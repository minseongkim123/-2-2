from tkinter import *

def search():
    print("검색 눌러짐")
    lb.insert(END, "검색 눌러짐")

def add():
    print("추가 눌러짐")
    lb.insert(END, "추가 눌러짐")

def saveExit():
    # 파일 저장
    exit()

window = Tk()

Label(window, text="이름").grid(row=0, column=0, pady=5)
Label(window, text="전화번호").grid(row=1, column=0, pady=5)
Label(window, text="주소").grid(row=2, column=0, pady=5)

e1 = Entry(window, width=27, bg="pink")
e1.grid(row=0, column=1)
e2 = Entry(window, width=27, bg="pink")
e2.grid(row=1, column=1)
e3 = Entry(window, width=27, bg="pink")
e3.grid(row=2, column=1)

# Frame 생성, columnspan 합치기
f = Frame(window)
f.grid(row=3, column=0, columnspan=2, pady=10)

b1 = Button(f, text="검색", padx=20, fg="blue", command=search)
b1.grid(row=3, column=0)
b2 = Button(f, text="추가", padx=20, fg="blue", command=add)
b2.grid(row=3, column=1)
b3 = Button(f, text="삭제", padx=20, fg="blue")
b3.grid(row=3, column=2)
b4 = Button(f, text="출력", padx=20, fg="blue")
b4.grid(row=3, column=3)
b5 = Button(f, text="종료", padx=20, fg="blue", command=saveExit)
b5.grid(row=3, column=4)

# Listbox 넣기
lb = Listbox(window, width=30, height=20, border=0, bg="pink")
lb.grid(row=4, column=0, columnspan=2)
# 스크롤바 만들기
scrollbar = Scrollbar(window, orient='vertical')
scrollbar.grid(row=4, column=2, sticky=N+S)
# 스크롤에서 리스트박스 셋팅
lb.configure(yscrollcommand=scrollbar.set)
scrollbar.configure(command=lb.yview())


window.mainloop()