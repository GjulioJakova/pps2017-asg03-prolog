search(X,[X|_]).
search(X,[_|Xs]):-search(X,Xs).
search_anytwo(X,[X|Xs]):- search(X,Xs), !.
search_anytwo(X,[_|Xs]):- search_anytwo(X,Xs).
