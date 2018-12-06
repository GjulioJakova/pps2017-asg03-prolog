all_bigger([],[]). 
all_bigger([X1|Xs],[X2|Ys]):- X1>X2, all_bigger(Xs,Ys).