:- module(tda_line_21247771_VillarroelMontenegro,[line/5,getId/2,getName/2,getRailType/2,getSections/2,sumadis/2,sumacost/2,largo/2,lineAddSection/3,lineLength/4]).

%Capa Constructor

line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).


%Capa Selectora
%
getId(Line,Id):-
    line(Id,_,_,_,Line).

getName(Line,Name):-
    line(_,Name,_,_,Line).

getRailType(Line,RailType):-
    line(_,_,RailType,_,Line).

getSections(Line,Sections):-
    line(_,_,_,Sections,Line).



% Descripcion: Funcion recursiva para sumar todas las distancias de un
% conjunto de secciones de una linea
% Meta Primaria: sumadis/2
% Meta Secundaria:getdistance(Section, Distance)
%                  sumadis(Resto,RestDIstance)
%                  Total Distance is DIstance + Rest Distance



sumadis([], 0).
sumadis([Section|Resto],TotalDistance) :-
    getdistance(Section, Distance),
    sumadis(Resto, RestDistance),
    TotalDistance is Distance + RestDistance.



sumacost([],0).
sumacost([Section|Resto],TotalCost):-
    getcost(Section,Cost),
    sumacost(Resto, RestCost),
    TotalCost is Cost + RestCost.

largo([], 0).
largo([_|Resto], Largo) :-
    largo(Resto, Acc),
    Largo is Acc + 1.


lineLength(Line,Length,Distance,Cost) :-
    getSections(Line,Sections),
    largo(Sections,Length),
    sumacost(Sections,Cost),
    sumadis(Sections,Distance).

lineSectionLength(_, StationName, StationName, [], 0, 0).

lineSectionLength(Line, StartName, EndName, Secciones, TotalDistance, TotalCost) :-
    station_id(StartName, Name1),
    station_id(EndName, EndID),
    line(_, _, _, Sections, Line),
    connects(Sections, StartName, NextStation),
    getdistance(Section, Distance),
    getcost(Section, Cost),
    station(NextStation, NextStationName, _, _, _),
    lineSectionLength(Line, NextStationName, EndName, RestSections, RestDistance, RestCost),
    TotalDistance is Distance + RestDistance,
    TotalCost is Cost + RestCost.

isSection(Sections):-
    getPoint1(Section,Point1),
    getPoint2(Section,Point2),
    member(Point1, Sections),
    member(Point2, Sections).

isLine(Line):-
    getSections(Line,Sections),
    isSection([Sections|_],Sections).




lineAddSection(Line,Section,LineOut):-
    getId(Line,Id),
    getName(Line,Name),
    getRailType(Line,RailType),
    getSections(Line,Sections),
    append(Sections, [Section], NewSections),
    line(Id,Name,RailType,NewSections,LineOut).


