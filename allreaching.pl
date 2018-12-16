anypath(G, N1, N2, [e(N1, N2)]) :- member(e(N1, N2), G).
anypath(G, N1, N2, [e(N1, N3)|L]) :- member(e(N1, N3), G), anypath(G, N3, N2, L).
allreaching(G, N, L):- findall(A, anypath(G, N, A, _), L).