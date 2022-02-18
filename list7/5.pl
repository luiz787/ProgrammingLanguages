dupList([], []).
dupList([X], [X, X]).
dupList([X|Tail], [X|[X|OtherTail]]) :- dupList(Tail, OtherTail).
