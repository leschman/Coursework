"""
Lab 2(Rock-Paper-Scissors-Lizard-Spock) Submission for Logan Esch.
2014-03-24
"""
import random


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

#Super-class for the Players in the game.
class Player:
	_name = ''
	"""
	constructor for Player Class
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
	play method stub, needs to be implemented in client classes.
	"""
	def play():
		raise NotImplementedError("Not yet Implemented")

#StupidBot
class StupidBot(Player):
        """
        play method for StupidBot,
        will always play spock.
        this guy just likes Leonard Nimoy...
        ignores lastMove.
        """
        def play(self, lastMove):
                return moves[4]

#RandomBot
class RandomBot(Player):
        """
        play method for RandomBot,
        picks a random move to play.
        ignores lastMove.
        """
        def play(self, lastMove):
                return moves[random.randint(0,4)]

#IterativeBot
class IterativeBot(Player):
        nextMove = 4
        """
        play method for IterativeBot
        starts with rock and makes moves one after the other.
        ignores lastMove.
        """
        def play(self, lastMove):
                self.nextMove = self.nextMove + 1
                if self.nextMove > 4:
                        self.nextMove = 0
                return moves[self.nextMove]

#LastPlayBot
class LastPlayBot(Player):
        """
        play method for LastPlayBot
        will always play the move that the oponent played last time
        lastMove should be the last move played move played by the other player.
        """
        def play(self, lastMove):
                return lastMove

#Human
class Human(Player):
        """
        play method for Human
        prints out possible moves and accepts user input.
        """
        def play(self, lastMove):
                print('(1) : Rock')
                print('(2) : Paper')
                print('(3) : Scissors')
                print('(4) : Lizard')
                print('(5) : Spock')
                choice = 'bad'
                while choice == 'bad':
                        try:
                                uInput = input("Enter your move: ")
                                if int(uInput) > 0 and int(uInput) < 6:
                                        choice = int(uInput) -1
                                else:
                                        raise ValueError
                        except ValueError:
                                print('Invalid move. Please try Again.')
                return(moves[choice])
                
                        
#myBot
class MyBot(Player):
        """
        play method for MyBot
        plays a move that would have won the last game.
        """
        def play(self,lastMove):
                lastMoveIndex = moves.index(lastMove)
                lastMoveIndex += 2
                if lastMoveIndex > 4:
                       lastMoveIndex -= 5
                return moves[lastMoveIndex]


"""
#main
class Main:
        print('Welcome to Rock, Paper, Scissors, Lizard, Spock, implemented by Logan Esch.')
        print()
        print('Please choose two players:')
        print('    (1) Human')
        print('    (2) StupidBot')
        print('    (3) RandomBot')
        print('    (4) IterativeBot')
        print('    (5) LastPlayBot')
        print('    (6) MyBot')
        print()

        
        player1 = ''
        player2 = ''
        player1Init = 'false'
        player2Init = 'false'
        while player1Init == 'false':
                choice = input("Select Player One: ")
                        if int(choice) > 0 and int(choice) < 7:
                             Player1Init = 'true'
                             player1
"""
                
        

#global variables
rock = Rock('Rock')
paper = Paper('Paper')
scissors = Scissors('Scissors')
lizard = Lizard('Lizard')
spock = Spock('Spock')

#the moves available in the game.
moves = [rock, paper, scissors, lizard, spock]

p1 = MyBot('IterativeBot')
p2 = IterativeBot('LastPlayBot')
p1Last = moves[0]
p2Last = moves[0]

p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))
p1Last = p1move
p2Last = p2move
p1move = p1.play(p2Last)
p2move = p2.play(p1Last)
print(p1move.compareTo(p2move))


