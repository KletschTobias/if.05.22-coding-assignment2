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

father(Father, Child) :- male(Father), parent(Father, Child).
mother(Mother, Child) :- female(Mother), parent(Mother, Child).

grandparent(Grandparent, Grandchild) :- parent(Grandparent, Parent), parent(Parent, Grandchild).

grandfather(Grandfather, Grandchild) :- male(Grandfather), grandparent(Grandfather, Grandchild).
grandmother(Grandmother, Grandchild) :- female(Grandmother), grandparent(Grandmother, Grandchild).