%Script de Prueba Lab2 Paradigma de Programacion
%Daniel Villarroel Montenegro


%Lineas de Metro New York

station(1, "183 St", "t", 40, E1),
station(2, "Burnside Av", "r", 10, E2),
station(3, "176 St", "r", 12, E3),
station(4, "Mt Eden Av", "r", 19, E4),
station(5, "170 St", "r", 20, E5),
station(6, "167 St", "r", 10, E6),
station(7, "St-Yankee Stadium", "c", 40, E7),
section( E0, E1, 2, 50, S0),
section( E1, E2, 2, 55, S1),
section( E2, E3, 15, 30, S2),
section( E3, E4, 3, 45, S3),
section( E4, E5, 3, 45, S4),
section( E5, E6, 4, 50, S5),
section( E6, E7, 25,  40, S6),
line(4, "Line 4", "UIC 60 ASCE",[S0,S1,S2,S3,S4,S5,S6],L4),
line(5, "Line 4 Short", "UIC 60 ASCE", [S1,S3,S4],L4S),
lineLength(L4,Length,Distance,Cost),
lineLength(L4S,Length1,Distance1,Cost1),
lineAddSection(L5,S5,L5New),
lineAddSection(L5New,S6,L5New2),
pcar( 0, 90, "NS-74", "ct", PC0),
pcar( 1, 100, "NS-74", "tr", PC1),
pcar( 2, 150, "NS-74", "tr", PC2),
pcar( 3, 90, "NS-74", "ct", PC3),
train( 1, "CAF", "UIC 60 ASCE", 70, [PC1, PC0, PC3, PC2], T1),
train( 2, "CFA", "UIC 77 ASCE", 50, [PC1, PC0], T2),


%Lineas de Metro Paris

station(8, "Porte Dauphine", "t", 20, E8),
station(9, "Victor Hugo", "r", 30, E9),
station(10, "Charles de Gaulle Etoile", "c", 10, E10),
station(11, "Ternes", "r", 10, E11),
station(12, "Courcelles", "t", 20, E12),

section(E8,E9,6,40,S7),
section(E9,E10,7,20,S8),
section(E10,E11,5,10,S9),

line(2,"Linea 2", "UIC 60 ASCE", [S7,S8],L2),
lineLength(L2,Length2,Distance2,Cost2),
lineAddSection(L2,S9,L2New),
pcar( 4, 90, "NS-74", "ct", PC4),
pcar( 5, 100, "NS-74", "tr", PC5),
train( 3, "CAF", "UIC 60 ASCE", 70, [PC4, PC5], T3).


