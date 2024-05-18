line(Id,Name,RailType,Sections,[Id,Name,RailType,Sections]).

lineLenght(Line,Length,Distance,Cost):-
    Line(_,_,Sections,L),
    Sections(_,_,Distancia,_,S).



