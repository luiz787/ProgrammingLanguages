ordered([]).
ordered([_|[]]).
ordered([F|[F|Tail]]) :- ordered([F|Tail]).
ordered([F|[S|Tail]]) :- F < S, ordered([S|Tail]).
