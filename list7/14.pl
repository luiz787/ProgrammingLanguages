perm([], []).
perm(T, [H|LL]) :- select(H, T, L1), perm(L1, LL).

test([], _, _, _).
test([Y|Ys], X, Cs, Ds) :-
  C is X-Y, \+ member(C, Cs),
  D is X+Y, \+ member(D, Ds),
  X1 is X + 1,
  test(Ys, X1, [C|Cs], [D|Ds]).

listUpTo(N, L) :- 
  findall(Num, between(1, N, Num), L).

queenN(N, Q) :-
  listUpTo(N, L),
  perm(L, Q),
  test(Q, 1, [], []).

nqueens(N, X) :- queenN(N, X).
