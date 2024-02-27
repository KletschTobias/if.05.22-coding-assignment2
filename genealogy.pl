parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(jacob, carol).

male(adam).
male(john).
male(pat).
male(jacob).
male(carol).
female(eve).
female(lisa).
female(anne).

father(X) :- male(X), parent(X, Y).
mother(X) :- female(X), parent(X, Y).

grandparent(X) :- parent(X, Y), parent(Y, Z).

grandfather(X) :- male(X), grandparent(X).
grandmother(X) :- female(X), grandparent(X).