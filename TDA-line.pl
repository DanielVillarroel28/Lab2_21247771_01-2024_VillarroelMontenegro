line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

sumdis([], 0).
sumdis([Section|Resto],TotalDistance) :-
    getdistance(Section, Distance),
    sumdis(Resto, RestDistance),
    TotalDistance is Distance + RestDistance.

sumcost([],0).
sumcost([Section|Resto],TotalCost):-
    getcost(Section,Cost),
    sumacost(Resto, RestCost),
    TotalCost is Cost + RestCost.

length([], 0).
length([_|Resto], Length) :-
    length(Resto, Acc),
    Largo is Acc + 1.

lineLength(Line,Length,Distance,Cost) :-
    line(_, _, _, Sections, Line),
    length(Sections,Length),
    sumacost(Sections,Cost),
    sumadis(Sections,Distance).
