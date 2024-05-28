:- module(tda_section_21247771_VillarroelMontenegro,[section/5,getPoint1/2,getPoint2/2,getdistance/2,getcost/2]).

section(Point1,Point2,Distance,Cost,[Point1, Point2, Distance, Cost]).

getPoint1(Section,Point1):-
    section(Point1,_,_,_,Section).

getPoint2(Section,Point2):-
    section(_,Point2,_,_,Section).

getdistance(Section,Distance) :-
    section(_, _, Distance, _, Section).

getcost(Section,Cost):-
    section(_,_,_,Cost,Section).



