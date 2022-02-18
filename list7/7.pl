
select(X, [X|L], L).
select(X, [H|L], [H|LR]) :- select(X, L, LR).

perm([], []).
perm(T, [H|LL]) :- select(H, T, L1), perm(L1, LL).

isEqual(X,Y) :- perm(X,Y).
