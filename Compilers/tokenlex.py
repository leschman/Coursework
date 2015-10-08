import ply.lex as lex

# List of Token names.

# reserved = {
# 	'PROGRAM':'program',
# 	'BEGIN':'begin',
# 	'END':'end',
# 	'FUNCTION':'function',
# 	'READ':'read',
# 	'WRITE':'write',
# 	'IF':'if',
# 	'ELSE':'else',
# 	'ENDIF':'endif',
# 	'WHILE':'while',
# 	'ENDWHILE':'endwhile',
# 	'CONTINUE':'continue',
# 	'BREAK':'break',
# 	'RETURN':'return',
# 	'INT':'int',
# 	'VOID':'void',
# 	'STRING':'string',
# 	'FLOAT':'float',
# 	':=':'assignment',
# 	'+':'addition',
# 	'-':'subtration',
# 	'*':'multiplication',
# 	'/':'division',
# 	'=':'equality',
# 	'!=':'inequality',
# 	'<':'lessthan',
# 	'>':'greaterthan',
# 	'(':'openparen',
# 	')':'closeparen',
# 	';':'semicolon',
# 	',':'comma',
# 	'<=':'lessthanequal',
# 	'>=':'greaterthanequal'
# }
reserved = {
	'PROGRAM':'KEYWORD',
	'BEGIN':'KEYWORD',
	'END':'KEYWORD',
	'FUNCTION':'KEYWORD',
	'READ':'KEYWORD',
	'WRITE':'KEYWORD',
	'IF':'KEYWORD',
	'ELSE':'KEYWORD',
	'ENDIF':'KEYWORD',
	'WHILE':'KEYWORD',
	'ENDWHILE':'KEYWORD',
	'CONTINUE':'KEYWORD',
	'BREAK':'KEYWORD',
	'RETURN':'KEYWORD',
	'INT':'KEYWORD',
	'VOID':'KEYWORD',
	'STRING':'KEYWORD',
	'FLOAT':'KEYWORD',
	':=':'OPERATOR',
	'+':'OPERATOR',
	'-':'OPERATOR',
	'*':'OPERATOR',
	'/':'OPERATOR',
	'=':'OPERATOR',
	'!=':'OPERATOR',
	'<':'OPERATOR',
	'>':'OPERATOR',
	'(':'OPERATOR',
	')':'OPERATOR',
	';':'OPERATOR',
	',':'OPERATOR',
	'<=':'OPERATOR',
	'>=':'OPERATOR'
}

tokens = [
	'IDENTIFIER',
	'INTLITERAL',
	'FLOATLITERAL',
	'STRINGLITERAL',
	'COMMENT',
	'OPERATOR',
	'KEYWORD',

	] + list(reserved.values())

# Regular expression rules for tokens:
t_IDENTIFIER = r'^[a-zA-Z]\w*$'

t_STRINGLITERAL = r'\".*\"'

def t_COMMENT(t):
		r'(--.*$)'
		pass

def t_FLOATLITERAL(t):
	r'\d*.\d+'
	t.value = float(t.value)
	return t

def t_INTLITERAL(t):
	r'\d+'
	t.value = int(t.value)
	return t

def t_RESERVED(t):
	r'[a-zA-Z_][a-zA-Z_0-9]*|(:=)|(=)|(!=)|(<)|(>)|(<=)|(>=)|(/)|(;)|(,)|(\*)|(-)|(\+)|(\))|(\()'
	t.type = reserved.get(t.value, 'IDENTIFIER')
	return t

t_ignore = ' \n\t'

lexer = lex.lex()