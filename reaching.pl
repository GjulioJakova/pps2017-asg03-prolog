% reaching(+Graph, +Node, -List) 
reaching(G, N, L):- findall(A, member(e(N, A), G), L).
