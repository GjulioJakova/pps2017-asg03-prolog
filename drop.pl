% dropFirst(?Elem,?List,?OutList)
dropFirst(X,[X|T],T):- !.
dropFirst(X,[H|Xs],[H|L]):-dropFirst(X,Xs,L).

% dropLast(?Elem,?List,?OutList)
dropLast(X,L,O):- reverse(L,LR), dropFirst(X,LR,OR), reverse(OR,O). 

% dropAll(?Elem,?List,?OutList)
dropAll(_,[],[]).
dropAll(E,[H|T],Result) :- H=E, dropAll(E,T,Result),!.
dropAll(E,[H|T],[H|Result]) :- dropAll(E,T,Result).