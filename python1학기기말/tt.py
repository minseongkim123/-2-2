from tkinter import *   # tkinter 모듈 포함

window = t.Tk()  # 루트 윈도우를 생성
print(type(window))

window.geometry("120x140") # width x height


label = t.label(window, text="1.LEFT") # 레이블 위젯을 생성
label.pack()    # 레이블 위젯을 윈도우에 배치

label02 = t.label(window, text="2.RIGHT")
label02.pack()

label03 = t.label(window, text="3.TOP")
label03.pack()

label04 = label(window, text="4.BOTTON")
label04.pack()

window.mainloop()   # 윈도우가 사용자 동작을 대기
