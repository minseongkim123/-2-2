from tkinter import *
window = Tk()

button = Button(window, text="클릭!",
                bg="yellow", fg="blue",
                width=80, height=2
)

button.pack()
window.mainloop()