'''
Takes a text file as input and reorders it's lines alphabetically
''' 

import sys

with open(sys.argv[1], 'r+') as f:
    content = f.readlines()
    content.sort()
    f.seek(0)
    for s in content:
        f.write(s)
