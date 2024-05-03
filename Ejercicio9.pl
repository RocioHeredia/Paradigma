adyac(X,Y,[X,Y|_]).
adyac(X,Y,[Y,X|_]).
adyac(X,Y,[_|T]):- adyac(X,Y,T).
