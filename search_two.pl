search_two(X,[X,_,X|_]):- !.
search_two(X,[_|Xs]):-search_two(X,Xs).