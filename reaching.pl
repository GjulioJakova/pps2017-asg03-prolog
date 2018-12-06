% reaching(+Graph, +Node, -List) 
reaching([],N,[]).
reaching([e(H1,H2)|T],N,[H2|O]):- H1=N, reaching(T,N,O),!.
reaching([e(H1,H2)|T],N,[H1|O]):- H2=N, reaching(T,N,O).
reaching([e(_,_)|T],N,O):- reaching(T,N,O).