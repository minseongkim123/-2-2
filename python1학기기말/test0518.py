from tkinter import *

window = Tk()

Label(window, text="이름").grid(row=0, column=0)  #행열 배치
Label(window, text="전화번호").grid(row=1, column=0)
Label(window, text="주소").grid(row=2, column=0)

e1 = Entry(window).grid(row=0, column=1)    #행열 배치
e2 = Entry(window).grid(row=1, column=1)
e3 = Entry(window).grid(row=2, column=1)

Button(window, text="추가").grid(row=3, column=1)
window.mainloop()