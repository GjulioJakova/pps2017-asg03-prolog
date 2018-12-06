size([],zero).
size([_|T],s(M)) :- size(T,M).