"""
Lab 2(Rock-Paper-Scissors-Lizard-Spock) Submission for Logan Esch.
2014-03-24
"""
#global variables


#Super-class for the possible moves in the game.
class Element:
	_name
	"""
	constructor for Element Class
	takes a string and initializes the name variable of the class to that string.
	"""
	def __init__(self, name):
		self._name=name

	"""
	Getter method for name variable
	"""
	def name():
		return _name
	
	"""
	Compare to method stub, needs to be implemented in client classes.
	"""
	def compareTo()
		raise NotImplementedError("Not yet Implemented")

		
#Rock 
class Rock(Element):
	"""
	Compare to method for Rock implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Rock crushes Scissors' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(otherElement):
		#get easier to type reference.
		oName = otherElement.super.name()
		
		if 'Rock' = oName:
			return ('Rock equals Rock', 'Tie')
		elif 'Paper' = oName:
			return ('Paper covers Rock', 'Loose')
		elif 'Scissors' = oName:
			return ('Rock crushes Scissors', 'Win')
		elif 'Lizard' = oName:
			return('Rock crushes Lizard', 'Win')
		elif 'Spock' = oName:
			return('Spock vaporizes Rock', 'Loose')
		else
			return('Unknown name:' + oName)

#Paper 
class Paper(Element):
	"""
	Compare to method for Paper implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Paper covers Rock' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(otherElement):
		#get easier to type reference.
		oName = otherElement.super.name()
		
		if 'Rock' = oName:
			return ('Paper covers Rock', 'Win')
		elif 'Paper' = oName:
			return ('Paper equals Paper', 'Tie')
		elif 'Scissors' = oName:
			return ('Scissors cut Paper', 'Loose')
		elif 'Lizard' = oName:
			return('Lizard eats Paper', 'Loose')
		elif 'Spock' = oName:
			return('Paper disproves Spock', 'Win')
		else
			return('Unknown name:' + oName)
			
			
			
			
			