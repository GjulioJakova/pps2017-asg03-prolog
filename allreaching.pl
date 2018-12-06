allreaching([],N,[]).
allreaching([e(H1,H2)|T],N,[H2|O]):- H1=N, allreaching(T,H2,O),!.
allreaching([e(H1,H2)|T],N,[H2|O]):- H1=N, allreaching(T,H1,O),!.
allreaching([e(_,_)|T],N,O):- allreaching(T,N,O).