miembro(X,[X|_]). %caso base esta en la cabeza
miembro(X,[_|T]):- miembro(X,T). %caso general esta en la cola

