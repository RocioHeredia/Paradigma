%hechos
medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2).

%menu de opciones
menu:-
    write("Menu: "),nl,
    write("Opci�n 1:Dado un m�dico, listar los pacientes que atiende."), nl,
    write("Opci�n 2:Dado un paciente, listar los medicos que lo atienden."), nl,
    write("Opcion 3: Terminar"),nl,
    read(Opcion),
    opcion(Opcion).

opcion(1):-
    write("Ingrese nombre del medico: "), read(NombreMedico),
    listar_pacientes_medico(NombreMedico),
    menu.
opcion(2):-
    write("Ingrese nombre del paciente: "), read(NombrePaciente),
    listar_medicos_paciente(NombrePaciente),
    menu.
opcion(3):-
    write("Adios.").
opcion(_):-
    write("Opcion Incorrecta"),nl,
    menu.

%reglas
listar_pacientes_medico(Medico):-
    medico(Medico,_),
    write("Pacientes Atendidos por "), write(Medico), write(":"), nl,
    atiende(Medico, Paciente),
    paciente(Paciente, Nombre),
    write(Nombre), nl,
    fail.
listar_pacientes_medico(_).

listar_medicos_paciente(Paciente):-
    paciente(Paciente,_),
    write("Medicos que atienden a "), write(Paciente), write(":"), nl,
    atiende(Medico, Paciente),
    medico(Medico, Nombre),
    write(Nombre), nl,
    fail.
listar_medicos_paciente(_).












