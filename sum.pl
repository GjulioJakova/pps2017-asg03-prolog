sum([],0).
sum([H|T],Sum):- sum(T,Temp), Sum is H + Temp.