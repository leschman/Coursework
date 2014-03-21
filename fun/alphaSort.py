'''
Takes a text file as input and reorders it's lines alphabetically
''' 

import sys

fileFound = 'false'
removeDuplicates = 'false'

# loop to handle incoming arguements. 
for arg in sys.argv:
    #ignore this file
    if arg.find('alphaSort.py') != -1:
        continue
    # check if arguement is a file, so it would contain a '.'
    if arg.find('.') != -1:
        #check if we have already found a file.
        if fileFound == 'false':
            #we didn't have a file, so now we do. 
            fileName = arg
            fileFound = 'true'
        else:
            #we already had a file, spit out an error. 
            print ('ERROR: multiple files found, ' + fileName + ', ' + arg)
            sys.exit(2)
    elif arg == '-rmDup':
        removeDuplicates = 'true'
    else:
        print ('ERROR: unknown arg: ' + arg)
        sys.exit(2)
        
#do what we came here to do. 
with open(fileName, 'r+') as f:
    content = f.readlines()
    content.sort()
    f.seek(0)
    p = content[1]
    for s in content:
        if removeDuplicates == 'true':
            if p == s:
                continue
        f.write(s)
        p = s
