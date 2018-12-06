% List1 should be a subset of List2 
search(X,[X|_]).
search(X,[_|Xs]):-search(X,Xs).
sublist([H1|T],List2):- search(H1,List2), !, sublist(T,List2). %per ogni head della prima lista controllo se c'è nella seconda lista
sublist([],List). %se la prima lista è finita vuol dire che tutte c'erano nella seconda lista