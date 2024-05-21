line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

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
    line(_, _, _, Sections, Line),
    largo(Sections,Length),
    sumacost(Sections,Cost),
    sumadis(Sections,Distance).
