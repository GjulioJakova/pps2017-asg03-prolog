max([H|T],Max) :- max(T,Max,H),!.
max([H|T],Max,TempMax):- H>TempMax, max(T,Max,H).
max([H|T],Max,TempMax):- H=<TempMax, max(T,Max,TempMax).
max([],Max,Max).
