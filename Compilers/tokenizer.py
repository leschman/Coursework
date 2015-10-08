"""
Tokenizer for compiler. scans input file and creates tokens.
"""
import re


class token():
    """object to represent a token."""
    token_type = ""
    value = ""

    def __init__(self, token_type, value):
        self.token_type = token_type
        self.value = value

    def __str__(self):
        return "Token Type: {0}\nValue: {1}".format(
            self.token_type, self.value
        )


def tokenize(filepath):
    """
    Tokenizer function. Scans file for matching tokens.

    filepath: the path to the input file.

    returns: list of token objects found.
    """
    tk_list = []
    skip_list = [None, '']
    split_regex = re.compile(
        "(:=)|(=)|(!=)|(<)|(>)|(<=)|(>=)|(/)|(--.*$)|(;)|(,)|(\*)|(-)|(\+)|(\))|(\()|\s+|(\".*\")"
        )
    with open(filepath, 'r') as f:

            # loop over every line in the file.
            for line in f:
                # separate the line by whitespace,
                # loop over all the objects.
                for obj in split_regex.split(line):
                    # skip blank tokens.
                    if obj in skip_list:
                        continue

                    # try to match tokens here.
                    # if they match, add them to token list.
                    tk = tk_keyword(obj)
                    if tk:
                        tk_list.append(tk)
                        # if match, start on the next word.
                        continue

                    tk = tk_identifier(obj)
                    if tk:
                        tk_list.append(tk)
                        continue

                    tk = tk_operator(obj)
                    if tk:
                        tk_list.append(tk)
                        continue

                    tk = tk_stringliteral(obj)
                    if tk:
                        tk_list.append(tk)
                        continue

                    tk = tk_intliteral(obj)
                    if tk:
                        tk_list.append(tk)
                        continue

                    tk = tk_floatliteral(obj)
                    if tk:
                        tk_list.append(tk)
                        continue

                    tk = tk_comment(obj)
                    if tk:
                        continue

                    # if they fail to match break and return
                    else:
                        return tk_list

    return tk_list


def tk_keyword(tk):
    """
    try to match a KEYWORD token.
    return KEYWORD token if matches, False otherwise.
    """
    keyword_list = [
        'PROGRAM', 'BEGIN', 'END', 'FUNCTION', 'READ', 'WRITE', 'IF',
        'ELSE', 'ENDIF', 'WHILE', 'ENDWHILE', 'CONTINUE', 'BREAK',
        'RETURN', 'INT', 'VOID', 'STRING', 'FLOAT'
    ]
    if tk in keyword_list:
        return token('KEYWORD', tk)
    else:
        return False


def tk_identifier(tk):
    """
    try to match a IDENTIFIER token.
    return IDENTIFIER token if matches, False otherwise.
    """
    regex = re.compile("^[a-zA-Z]\w*$")
    if regex.match(tk):
        return token('IDENTIFIER', tk)
    else:
        return False


def tk_operator(tk):
    """
    try to match an OPERATOR token.
    return OPERATOR token if matches, False otherwise.
    """
    operator_list = [
        ':=', '+', '-', '*', '/', '=', '!=', '<', '>', '(', ')', ';', ',',
        '<=', '>='
    ]
    if tk in operator_list:
        return token('OPERATOR', tk)
    else:
        return False


def tk_stringliteral(tk):
    """
    try to match a STRINGLITERAL token.
    if matches build STRINGLITERAL  False otherwise.
    """
    regex = re.compile("\".*\"")
    if regex.match(tk):
        return token('STRINGLITERAL', tk)
    else:
        return False


def tk_intliteral(tk):
    """
    try to match an INTLITERAL token.
    return INTLITERAL token if match, False otherwise.
    """
    regex = re.compile("\d+$")
    if regex.match(tk):
        return token('INTLITERAL', tk)
    else:
        return False


def tk_floatliteral(tk):
    """
    try to match an FLOATLITERAL token.
    return FLOATLITERAL token if match, False otherwise.
    """
    regex = re.compile("\d*.\d+")
    if regex.match(tk):
        return token('FLOATLITERAL', tk)
    else:
        return False


def tk_comment(tk):
    """
    try to match a COMMENT token.
    return true, else false.
    """
    regex = re.compile("(--.*$)")
    if regex.match(tk):
        return True
    else:
        return False
