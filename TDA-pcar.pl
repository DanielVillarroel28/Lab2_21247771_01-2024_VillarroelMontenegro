pcar(Id,Capacity,Model,Type,[Id,Capacity,Model,Type]).

getId(Pcar,Id):-
    pcar(Id,_,_,_,Pcar).

getCapacity(Pcar,Capacity):-
    pcar(_,Capacity,_,_,Pcar).

getModel(Pcar,Model):-
    pcar(_,_,Model,_,Pcar).

getType(Pcar,Type):-
    pcar(_,_,_,Type,Pcar).


