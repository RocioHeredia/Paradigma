potencia(_, 0, 1). % Caso base: cualquier número elevado a 0 es 1
potencia(B, E, R) :-
    E > 0, % El exponente debe ser positivo
    EA is E - 1, potencia(B, EA, RA), R is RA * B.
