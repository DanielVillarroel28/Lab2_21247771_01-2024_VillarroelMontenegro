:- module(tda_tain_21247771_VillarroelMontenegro,[train/6,getIdT/2,getMaker/2,getRailTypeT/2,getSpeed/2,getPcars/2,trainAddCar/4,sumaCapacity/2,trainCapacity/2]).

train(Id,Maker,RailType,Speed,Pcars,[Id,Maker,RailType,Speed,Pcars]).

getIdT(Train,Id):-
    train(Id,_,_,_,_,Train).

getMaker(Train,Maker):-
    train(_,Maker,_,_,_,Train).

getRailTypeT(Train,RailType):-
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
    append(Pcars,[Pcar],NewPcar),
    train(Id,Maker,RailType,Speed,NewPcar,Train_New).

trainRemoveCar(Train,Position,TrainOut):-
    getIdT(Train,Id),
    getMaker(Train,Maker),
    getRailType(Train,RailType),
    getSpeed(Train,Speed),
    getPcars(Train,Pcars).


isTrain(Train):-
    getPcars(Train,Pcars),
    getModel(Pcars,Model),
    member(Model,Model).

sumaCapacity([],0).
sumaCapacity([Pcar|Resto],TotalCapacity):-
    getCapacity(Pcar,Capacity),
    sumaCapacity(Resto,RestCapacity),
    TotalCapacity is Capacity + RestCapacity.

trainCapacity(Train,C):-
    getPcars(Train,Pcars),
    sumaCapacity(Pcars,C).
