%Logan Esch
%CSCI 305 Lab4
:- consult('royal.pro').
%mother takes ether a mother(M) and returns the child(C) or vice versa. 
%it does this by finding the parent-child relationship and returning the female parent. 
mother(M,C):-parent(M,C), female(M).

%father takes ether a father(F) and returns the child(C) or vice versa. 
%it does this by finding the parent-child relationship and returning the male parent.
father(F,C):-parent(F,C), male(F).

%given one part of a married pair spouse returns the other. 
spouse(H,W):-married(W,H).

%chlid returns the child of a given parent, or the parent of a given child. 
child(P,C) :-parent(P,C).

%like child, but makes sure the child is male.
son(S,P)   :-parent(P,S), male(S).

%like child, but makes sure the child is female.
daughter(D,P):-parent(P,D), female(D).

%if the two people share the same mother and father, and the two people are different people,
%then they are siblings. 
sibling(O,Y):-mother(M,O), mother(M,Y),
	father(F,O), father(F,Y), dif(O,Y).
	
%finds given a person, returns the male siblings of the person, or given a male person returns the %siblings.
brother(First,Second):-
	sibling(First,Second), male(Second).

%finds given a person, returns the female siblings of the person, or given a female person returns the %siblings.	
sister(First, Second):-
	sibling(First,Second), female(Second).

% given person(S), finds the person's parent's brothers (uncles by blood). 
% given uncle(U), finds the uncle's, sibling's children.
uncle(S,U):-
	parent(P,S), brother(P, U).

% given person(S), finds the person's parent's sister's husbands (uncles by marriage).
% given uncle(U), finds the uncle's spouse's sibling's children. 	
uncle(S,U):-
	parent(P,S), sister(P,A), spouse(U, A).
	
%like uncle by blood but for sister.
aunt(S,A):-
	parent(P,S), sister(P,A).
	
%like uncle by marriage but for sister.
aunt(S,A):-
	parent(P,S), brother(P,U), spouse(U,A).
	
%finds the parent's parents, or the grandparent's children's children.
grandparent(G,C):-
	parent(P,C), parent(G,P).
	
%finds the male grandparents, or the grandkids of a male grandparent.
grandfather(G,C):-
	grandparent(G,C), male(G).

%finds the female grandparents, or the grandkids of a female grandparent.
grandmother(G,C):-
	grandparent(G,C), female(G).
	
%finds a child's parent's parents or a grandparent's children's children.
grandchild(G,C):-
	child(G,P), child(P,C).
	
%returns the direct parents of a person.
ancestor(A,D):- parent(A,D).

%recursivly finds the ancestors by finding all the parents.
ancestor(A,D):- parent(P,D), ancestor(A,P).

%returns the direct descendants of a person.
descendant(A,D):- child(A,D).

%recursivly finds all the decendants of a person by finding all the children.
descendant(A,D):- child(A,P), descendant(P,D).

%checks if someone is older than someone else, 
%or returns all the people older than the given person(Y)
%or all the people younger given person(X).
older(X,Y):- born(X,XD), born(Y,YD), XD<YD.

%checks if someone is younger than someone else,
%or returns all the people younger than the given person(Y)
%or returns all the people older than the given person(X).
younger(X,Y):-born(X,XD), born(Y,YD), XD>YD.

%returns the regent whos start date is less than the person's year of birth and whos 
%end date is greater than.
%or gives all the people who were born during a regent's reign. 
regentWhenBorn(X,Y):-
	born(Y,YD), reigned(X,SD,ED), SD<YD, YD<ED.

