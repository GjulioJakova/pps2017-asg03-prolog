fromCircList([H|T],G) :- fromCircList1([H|T],H,G).
fromCircList1([H],HL,[e(H,HL)]).
fromCircList1([H1,H2|T],HL,[e(H1,H2)|L]) :- fromCircList1([H2|T],HL,L).