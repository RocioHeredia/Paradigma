padre(pedro, rocio).
padre(pedro, raul).
padre(pedro, maria).
padre(raul, lourdes).
padre(pedro, juan).
madre(rocio, emilia).
madre(maria, jose).
hombre(pedro).
hombre(raul).
hombre(jose).
hombre(juan).
mujer(rocio).
mujer(maria).
mujer(emilia).
mujer(lourdes).
progenitor(X, Y):-padre(X,Y).
progenitor(X, Y):-madre(X, Y).
es_madre(X):- madre(X).
es_padre(X):- padre(X).
es_hijo(X):- hombre(X), progenitor(_, X).
hija(X,Y):- mujer(X), progenitor(Y,X).
tio(X, Y):- hombre(X), progenitor(Z, X), progenitor(Z,A), progenitor(A,Y), X \= A.
sobrino(X,Y):- hombre(X),progenitor(Z,X), progenitor(P,Z),progenitor(P,Y), Z \= Y.
prima(X,Y):- mujer(X),progenitor(Z,X),progenitor(P,Z),progenitor(P,H),progenitor(H,Y), Z\=H.
abuelo_o_abuela(X,Y):- progenitor(P,Y),progenitor(X,P).











