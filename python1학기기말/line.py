infile = open("./input.txt")
while True:
    line = infile.readline().rstrip('\n')
    line2 = line.rstrip('*')
    line3 = line2.lstrip('/')

    #line4 = re.sub("\철", "", line3)
    if not line:
        break
    print(line3)

#line = infile.readline()
#while line != "":
    #print(line)
    #line = infile.readline()