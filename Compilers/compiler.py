#!/usr/bin/python
"""
Main class for Micro language compiler.
"""
import argparse
from tokenizer import tokenize
#import tokenlex
#from parser import parse


def main():
    """
    Main class for program, parses arguements and passes them
    on to other parts of program.
    """

    # Arguments parser.
    argparser = argparse.ArgumentParser()
    argparser.add_argument('path', help="path to .micro file to compile.")
    argparser.add_argument(
        "-t", "--tokenizer", action='store_true', 
        help="just run the tokenizer and print the output."
    )
    args = argparser.parse_args()
    tok_list = tokens
    tok_list.tokens = tokenize(args.path)
    # with open(args.path, 'r') as f:
    #     lexer = tokenlex.lexer
    #     lexer.input(f.read())

    # if args.tokenizer:
    #     for tk in lexer:
    #         print "Token Type: {}\nValue: {}".format(tk.type, tk.value)
    #     return

    if args.tokenizer:
        for tk in tk_list.tokens():
            print tk
        return

    # Call Parser. 
 #    if(parse(tokens)):
	# print "Accepted\n"
 #    else:
 #        print "Not accepted\n"


if __name__ == "__main__":
    main()

class tokens():

    def __init__(tokens):
        self.tokens = tokens

    def token():
        return tokens.next()