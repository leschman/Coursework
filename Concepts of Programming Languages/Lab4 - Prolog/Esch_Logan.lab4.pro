%Logan Esch
%CSCI 305 Lab4
:- consult('royal.pro').
mother(M,C):-parent(M,C), female(M).
father(F,C):-parent(F,C), male(F).
spouse(H,W):-married(H,W).
child(P,C) :-parent(P,C).
son(P,S)   :-parent(P,S), male(S).
daughter(P,D):-parent(P,D), female(D).
sibling(O,Y):-mother(M,O), mother(M,Y),
	father(F,O), father(F,Y), dif(O,Y).
brother(First,Second):-
	sibling(First,Second), male(Second).
sister(First, Second):-
	sibling(First,Second), female(Second).
uncle(S,U):-
	parent(P,S), brother(P, U).
uncle(S,U):-
	parent(P,S), sister(P,A), spouse(U, A).
aunt(S,A):-
	parent(P,S), sister(P,A).
aunt(S,A):-
	parent(P,S), brother(P,U), spouse(U,A).
grandParent(G,C):-
	parent(P,C), parent(G,P).
grandFather(G,C):-
	grandParent(G,C), male(G).
grandMother(G,C):-
	grandParent(G,C), female(G).
grandChild(G,C):-
	child(G,P), child(P,C).
ancestor(A,D):- parent(A,D).
ancestor(A,D):- parent(P,D), ancestor(A,P).
descendant(A,D):- child(A,D).
descendant(A,D):- child(A,P), descendant(P,D).
older(X,Y):- born(X,XD), born(Y,YD), XD<YD.
younger(X,Y):-born(X,XD), born(Y,YD), XD>YD.
regentWhenBorn(X,Y):-
	born(Y,YD), reigned(X,SD,ED), SD<YD, YD<ED.

