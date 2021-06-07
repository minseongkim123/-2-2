infile = open("./input.txt", "r")
out = open("./output.txt", "w")

line = infile.readline().rstrip() #\n 제거
while line !="":
    print(line)
    out.write(line + '\n')
    line = infile.readline().rstrip()

#out = open("./output.txt", "w")
#out.write("line")