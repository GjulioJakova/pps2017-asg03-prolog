% seqR2(N,List) % example: seqR2(4,[0,1,2,3,4]).
seqR2(N,List) :- seq(0,N,List).
seq(N,N,[N]) :- !.
seq(N,M,[N|T]) :- N =< M, N2 is N+1, seq(N2,M,T).