line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

getId(Line,Id):-
    line(Id,_,_,_,Line).

getName(Line,Name):-
    line(_,Name,_,_,Line).

getRailType(Line,RailType):-
    line(_,_,RailType,_,Line).

getSections(Line,Sections):-
    line(_,_,_,Sections,Line).

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

lineAddSection(Line,Section,LineOut):-
    getId(Line,Id),
    getName(Line,Name),
    getRailType(Line,RailType),
    getSections(Line,Sections),
    line(Id,Name,RailType,[Sections|Section],Line).

