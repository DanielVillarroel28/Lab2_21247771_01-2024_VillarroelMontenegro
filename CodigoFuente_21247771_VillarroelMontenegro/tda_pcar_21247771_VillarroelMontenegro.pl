:- module(tda_pcar_21247771_VillarroelMontenegro,[pcar/5,getIdP/2,getCapacity/2,getModel/2,getType/2]).
pcar(Id,Capacity,Model,Type,[Id,Capacity,Model,Type]).

getIdP(Pcar,Id):-
    pcar(Id,_,_,_,Pcar).

getCapacity(Pcar,Capacity):-
    pcar(_,Capacity,_,_,Pcar).

getModel(Pcar,Model):-
    pcar(_,_,Model,_,Pcar).

getType(Pcar,Type):-
    pcar(_,_,_,Type,Pcar).


