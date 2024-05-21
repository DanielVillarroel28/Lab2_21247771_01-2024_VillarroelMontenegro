section(Point1, Point2, Distance, Cost, [Point1, Point2, Distance, Cost]).

getdistance(Section, Distance) :-
    section(_, _, Distance, _, Section).

getcost(Section, Cost):-
    section(_,_,_,Cost,Section).



