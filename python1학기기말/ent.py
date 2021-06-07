from tkinter import *
window = Tk()

entry01 = Entry(window, fg="black", bg="yellow", width=20)
entry01.pack(side=LEFT)

entry02 = Entry(window, fg="black", bg="orange", width=20)
entry02.pack(side=RIGHT)



window.mainloop()