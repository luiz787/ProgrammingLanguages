max(X,Y,Z) :- X<Y, Z=Y.
max(X,Y,Z) :- X=Y, Z=Y.
max(X,Y,Z) :- X>Y, Z=X.

maxList([], _) :- false.
maxList([H], M) :- M=H.
maxList([H,S|[]], M) :- max(H,S,M).
maxList([H|Tail], M) :- maxList(Tail, TailMax), max(H, TailMax, M).
