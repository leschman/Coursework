"""
Lab 2(Rock-Paper-Scissors-Lizard-Spock) Submission for Logan Esch.
2014-03-24
"""


#Super-class for the possible moves in the game.
class Element:
	_name = ''
	"""
	constructor for Element Class
	takes a string and initializes the name variable of the class to that string.
	"""
	def __init__(self, name):
		self._name=name

	"""
	Getter method for name variable
	"""
	def name(self):
		return self._name
	
	"""
	Compare to method stub, needs to be implemented in client classes.
	"""
	def compareTo():
		raise NotImplementedError("Not yet Implemented")

		
#Rock 
class Rock(Element):

	"""
	Compare to method for Rock implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Rock crushes Scissors' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(self, otherElement):
		#get easier to type reference.
		oName = otherElement.name()
		
		if 'Rock' == oName:
			return ('Rock equals Rock', 'Tie')
		elif 'Paper' == oName:
			return ('Paper covers Rock', 'Lose')
		elif 'Scissors' == oName:
			return ('Rock crushes Scissors', 'Win')
		elif 'Lizard' == oName:
			return('Rock crushes Lizard', 'Win')
		elif 'Spock' == oName:
			return('Spock vaporizes Rock', 'Lose')
		else:
			return('Unknown name:' + oName)

#Paper 
class Paper(Element):
	"""
	Compare to method for Paper implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Paper covers Rock' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(self, otherElement):
		#get easier to type reference.
		oName = otherElement.name()
		
		if 'Rock' == oName:
			return ('Paper covers Rock', 'Win')
		elif 'Paper' == oName:
			return ('Paper equals Paper', 'Tie')
		elif 'Scissors' == oName:
			return ('Scissors cut Paper', 'Lose')
		elif 'Lizard' == oName:
			return('Lizard eats Paper', 'Lose')
		elif 'Spock' == oName:
			return('Paper disproves Spock', 'Win')
		else:
			return('Unknown name:' + oName)

#Scissors 
class Scissors(Element):
	"""
	Compare to method for Scissors implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Scissors cut Paper' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(self, otherElement):
		#get easier to type reference.
		oName = otherElement.name()
		
		if 'Rock' == oName:
			return ('Rock crushes Scissors', 'Lose')
		elif 'Paper' == oName:
			return ('Scissors cut Paper', 'Win')
		elif 'Scissors' == oName:
			return ('Scissors equals Scissors', 'Tie')
		elif 'Lizard' == oName:
			return('Scissors decapitate Lizard', 'Win')
		elif 'Spock' == oName:
			return('Spock smashes Scissors', 'Loose')
		else:
			return('Unknown name:' + oName)
			

#Lizard 
class Lizard(Element):
	"""
	Compare to method for Lizard implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Lizard poisons Spock' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(self, otherElement):
		#get easier to type reference.
		oName = otherElement.name()
		
		if 'Rock' == oName:
			return ('Rock crushes Lizard', 'Lose')
		elif 'Paper' == oName:
			return ('Lizard eats Paper', 'Win')
		elif 'Scissors' == oName:
			return ('Scissors decapitate Lizard', 'Lose')
		elif 'Lizard' == oName:
			return('Lizard equals Lizard', 'Tie')
		elif 'Spock' == oName:
			return('Lizard poisons Spock', 'Win')
		else:
			return('Unknown name:' + oName)
#Spock 
class Spock(Element):
	"""
	Compare to method for Spock implementation. 
	takes another element and compares it to this one. 
	Returns two strings, one with what happened, i.e. 'Spock smashes Scissors' 
	and another with the result i.e. 'Win'
	"""
	def compareTo(self, otherElement):
		#get easier to type reference.
		oName = otherElement.name()
		
		if 'Rock' == oName:
			return ('Spock vaporizes Rock', 'Win')
		elif 'Paper' == oName:
			return ('Paper disproves Spock', 'Lose')
		elif 'Scissors' == oName:
			return ('Spock smashes Scissors', 'Win')
		elif 'Lizard' == oName:
			return('Lizard poisions Spock', 'Lose')
		elif 'Spock' == oName:
			return('Spock equals Spock', 'Tie')
		else:
			return('Unknown name:' + oName)

#global variables



rock = Rock('Rock')
paper = Paper('Paper')
scissors = Scissors('Scissors')
lizard = Lizard('Lizard')
spock = Spock('Spock')

#the moves available in the game.
moves = [rock, paper, scissors, lizard, spock]

for move1 in moves:
        print(move1.name())
        for move2 in moves:
                print(move1.compareTo(move2))



"""

moves = []
moves.append(rock)
moves.append(paper)
moves.append(scissors)
moves.append(lizard)
moves.append(spock)


print('Rock')
print(moves[0].compareTo(moves[0]))
print(rock.compareTo(paper))
print(rock.compareTo(scissors))
print(rock.compareTo(lizard))
print(rock.compareTo(spock))


print('Paper')
print(paper.compareTo(rock))
print(paper.compareTo(scissors))
print(paper.compareTo(paper))
print(paper.compareTo(lizard))
print(paper.compareTo(spock))

print('Scissors')
print(scissors.compareTo(rock))
print(scissors.compareTo(paper))
print(scissors.compareTo(scissors))
print(scissors.compareTo(lizard))
print(scissors.compareTo(spock))

print('Lizard')
print(lizard.compareTo(rock))
print(lizard.compareTo(paper))
print(lizard.compareTo(scissors))
print(lizard.compareTo(lizard))
print(lizard.compareTo(spock))


print('Spock')
print(spock.compareTo(rock))
print(spock.compareTo(paper))
print(spock.compareTo(scissors))
print(spock.compareTo(lizard))
print(spock.compareTo(spock))
"""



			
			
			
