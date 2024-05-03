elim(_,[],[]).
elim(X,[X|T],T). %Caso de que este en la cabeza
elim(X,[H|T],[H|R]):- X\=H, elim(X, T, R).
