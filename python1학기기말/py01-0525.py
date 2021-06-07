from tkinter import *

window = Tk()

l1 = Label(window , text="화씨")
l1.grid(row=0, column=0)

l2 = Label(window, text="섭씨")
l2.grid(row=1, column=0,pady=10)

e1 = Entry(window, bg="orange")
e1.grid(row=0, column=1)

e2 = Entry(window,bg="orange")
e2.grid(row=1, column=1)

f = Frame(window)
f.grid(row=2, column=0, columnspan=2)

b1 = Button(f, text="검색")
b1.grid(row=0, column=0, padx=8)

b2 = Button(f, text="추가")
b2.grid(row=0, column=1,padx=8)

b3 = Button(f, text="삭제")
b3.grid(row=0, column=2, padx=8)

b4 = Button(f, text="수정")
b4.grid(row=0, column=3, padx=8)

b5 = Button(f, text="종료")
b5.grid(row=0, column=4)

lb = Listbox(window, height=10, width=20, bg="orange", border=0)
lb.grid(row=3, column=0, columnspan=2, pady=10)

window.mainloop()