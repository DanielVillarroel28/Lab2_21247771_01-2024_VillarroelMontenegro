train(Id,Maker,RailType,Speed,Pcars,[Id,Maker,RailType,Speed,Pcars]).

getIdT(Train,Id):-
    train(Id,_,_,_,_,Train).

getMaker(Train,Maker):-
    train(_,Maker,_,_,_,Train).

getRailType(Train,RailType):-
    train(_,_,RailType,_,_,Train).

getSpeed(Train,Speed):-
    train(_,_,_,Speed,_,Train).


getPcars(Train,Pcars):-
    train(_,_,_,_,Pcars,Train).


trainAddCar(Train,Pcar,Position,Train_New):-
    getIdT(Train,Id),
    getMaker(Train,Maker),
    getRailType(Train,RailType),
    getSpeed(Train,Speed),
    getPcars(Train,Pcars),
    train(Id,Maker,RailType,Speed,[Pcars|Pcar],Train_New).

sumaCapacity([],0).
sumaCapacity([Pcar|Resto],TotalCapacity):-
    getCapacity(Pcar,Capacity),
    sumaCapacity(Resto,RestCapacity),
    TotalCapacity is Capacity + RestCapacity.

trainCapacity(Train,C):-
    getPcars(Train,Pcars),
    sumaCapacity(Pcars,C).
