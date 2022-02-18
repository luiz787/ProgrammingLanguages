oddSize([_|[]]).
oddSize([_|[_|Tail]]) :- oddSize(Tail).

evenSize([]).
evenSize([_|[_|[]]]).
evenSize([_|[_|Tail]]) :- evenSize(Tail).
